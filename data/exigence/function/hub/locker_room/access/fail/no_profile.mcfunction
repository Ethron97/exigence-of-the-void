# Fail because no profile

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

tellraw @s {text:"You must have a profile loaded to enter this room",color:"red"}
function exigence:hub/locker_room/access/fail/bounce