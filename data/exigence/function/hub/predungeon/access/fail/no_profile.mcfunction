# Fail because no profile

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

tellraw @s {text:"You must have a profile loaded to enter this room",color:"red"}
function exigence:hub/predungeon/access/fail/bounce