# Handle player leaving the room

## CONSTRAINTS
#   AS player
#   AT LockerRoom node

#====================================================================================================

say Leaving Locker Room

tag @s remove LockerRoom

execute if entity @n[distance=..0.1,tag=LockerRoomNode,tag=South] at @s run tp @s ~ ~ ~-1
execute if entity @n[distance=..0.1,tag=LockerRoomNode,tag=West] at @s run tp @s ~1 ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remove interaction
function exigence:hub/locker_room/node/kill_interaction

scoreboard players reset @s hub.player.locker_room_id

#====================================================================================================
# Remove THIS player from room node
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s player.node.room_id = #compare hub.player.room_id \
if score @s profile.node.player_id = #compare career.player_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id

# CHECK IF THERE ARE OTHER PLAYERS ON THE ROOM NODE
#   If yes, earlyu return so we don't kill the room node/unload the room
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s player.node.room_id = #compare hub.player.room_id \
run return 0
#----------------------------------------------------------------------------------------------------

# If this player was the last one, kill room node and unload room
execute as @n[distance=..0.1,type=marker,tag=LockerRoomNode] at @s run function exigence:hub/locker_room/node/unload_room
execute in exigence:hub positioned 0 153 0 as @e[distance=..1,type=marker,tag=RoomNode] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
