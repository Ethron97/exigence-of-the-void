# Called by room_tick

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Check if ANY player is online with that room_id
scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id
scoreboard players set #player_found Temp 0
execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #compare hub.room.room_id run scoreboard players set #player_found Temp 1

# If no player found, increase timeout
execute if score #player_found Temp matches 0 run function exigence:room/node/increase_timeout

# If player found, reset timeout
execute if score #player_found Temp matches 1 run scoreboard players set @s hub.room.current_timeout 0