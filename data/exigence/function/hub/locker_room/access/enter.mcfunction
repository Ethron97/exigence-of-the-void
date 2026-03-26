# Handle player entering the room

## CONSTRAINTS
#   AS player
#   AT LockerRoom node

#====================================================================================================

say Entering Locker Room

tag @s add LockerRoom

execute if entity @n[distance=..0.1,tag=LockerRoomNode,tag=South] at @s run tp @s ~ ~ ~1
execute if entity @n[distance=..0.1,tag=LockerRoomNode,tag=West] at @s run tp @s ~-1 ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

# Load room as chosen locker room node (validation done in previous function)
# Inputting: #compare profile.node.profile_id
execute as @n[distance=..1,tag=LockerRoomNode] at @s run function exigence:hub/locker_room/node/load_room

scoreboard players operation @s hub.player.locker_room_id = @n[distance=..1,tag=LockerRoomNode] hub.locker_room_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation @n[distance=..1,tag=LockerRoomNode] hub.entity.coop_profile_id = @s profile.player.coop_profile_id

# Summon interaction
function exigence:hub/locker_room/node/setup_interaction

#====================================================================================================
# Summon Room Node
scoreboard players set #room_type Temp 11
execute in exigence:hub positioned 0 153 0 run function exigence:room/node/new

# Assign room ids
#   PLAYER
scoreboard players operation @s hub.player.room_id = #next hub.room.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #next hub.room.room_id
#   FK (link room node to specific room node)
scoreboard players operation @n[distance=..1,tag=LockerRoomNode] hub.entity.room_id = #next hub.room.room_id