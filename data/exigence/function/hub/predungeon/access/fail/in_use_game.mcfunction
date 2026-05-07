# Fail because in use

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

tellraw @s [{text:"✖ Cannot enter Predungeon while the dungeon is active",color:"red"}]
function exigence:hub/predungeon/access/fail/bounce