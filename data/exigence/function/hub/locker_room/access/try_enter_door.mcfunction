# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

say Try enter locker room

# Make sure player has profile loaded
execute unless score @s profile.player.profile_id matches 1.. run function exigence:hub/locker_room/access/fail/no_profile
execute unless score @s profile.player.profile_id matches 1.. run return fail

# If CO-OP profile, check if co-op member is in ANY of the other locker rooms (don't let co-op members split across locker rooms)
#   OUTPUTS: #did_coop_enter Temp=1 if it found a coop lockerroom to follow
execute if score @s profile.player.coop_profile_id matches 1.. run function exigence:hub/locker_room/access/try_enter_coop
execute if score #did_coop_enter Temp matches 1 run return 0

# Node is in use
execute if score @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id matches 1.. run function exigence:hub/locker_room/access/fail/in_use
execute if score @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id matches 1.. run return fail
#----------------------------------------------------------------------------------------------------

# Enter room as first player
function exigence:hub/locker_room/access/enter
