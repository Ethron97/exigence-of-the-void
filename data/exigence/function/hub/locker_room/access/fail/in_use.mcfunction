# Fail because no profile

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

tellraw @s {text:"This Locker Room is in use",color:"red"}
function exigence:hub/locker_room/access/fail/bounce