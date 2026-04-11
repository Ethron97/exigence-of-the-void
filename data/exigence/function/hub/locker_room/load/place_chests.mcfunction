# Place empty chests

## CONSTRAINTS
#   AS locker room node
#   AT center of room

#====================================================================================================

#say (D3) Place chests [locker room]

execute at @s[tag=South] run function exigence:hub/locker_room/load/private/place_chests_south
execute at @s[tag=West] run function exigence:hub/locker_room/load/private/place_chests_west