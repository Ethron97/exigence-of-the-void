# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS player
#   AT LockerRoom node

#====================================================================================================

say Try enter locker room

# Node is in use, but divert if it is a co-op member:
# TODO

# Node is in use
execute if score @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id matches 1.. run tellraw @s {text:"This Locker Room is in use",color:"red"}
execute if score @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id matches 1.. run tp @s ^ ^ ^-8
execute if score @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id matches 1.. run return fail

# Make sure player has profile loaded
execute unless score @s profile.player.profile_id matches 1.. run tellraw @s {text:"You must have a profile loaded to enter this room",color:"red"}
execute unless score @s profile.player.profile_id matches 1.. run tp @s ^ ^ ^-8
execute unless score @s profile.player.profile_id matches 1.. run return fail

# if the nearest locker room node is occupied (and not a co-op member), fail
#execute in exigence:hub positioned 999.5 128 6.5 as @e[distance=..140,type=marker,tag=LockerRoomNode] run scoreboard players add @s hub.locker_room_id 0
#execute in exigence:hub positioned 999.5 128 6.5 store result score #temp Temp if entity @e[distance=..140,type=marker,tag=LockerRoomNode,scores={hub.locker_room_id=0}]
#execute if score #temp Temp matches 0 run function exigence:hub/locker_room/access/try_enter_door_fail
#execute if score #temp Temp matches 0 run return fail
#----------------------------------------------------------------------------------------------------

# COOP?

# Enter room as player
function exigence:hub/locker_room/access/enter
