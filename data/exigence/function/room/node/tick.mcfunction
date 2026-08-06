# Called by room_tick

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Increase load timer (if world is multiplayer, unless marked as indefinite/cannot expire)
#   May kill this room node and early exit
execute if score world.is_multiplayer exigence matches 1 if score @s hub.room.max_timer matches 0.. run function exigence:room/node/try_increase_timer

# Increase loaded time
scoreboard players add @s hub.room.loaded_time 1

# Check if ANY player is online with that room_id
scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id
scoreboard players set #player_found Temp 0
execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #compare hub.room.room_id run scoreboard players set #player_found Temp 1

# If no player found, increase timeout
#   May kill this room node and early exit
execute if score #player_found Temp matches 0 run function exigence:room/node/increase_timeout

# If player found, reset timeout
execute if score #player_found Temp matches 1 run scoreboard players set @s hub.room.current_timeout 0

# If limbo room node, and player found, call limbo tick (checks to migrate room to Ember Shop)
execute if score @s hub.room.room_type matches 4 if score #player_found Temp matches 1 run function exigence:hub/limbo/node/limbo_room_update
