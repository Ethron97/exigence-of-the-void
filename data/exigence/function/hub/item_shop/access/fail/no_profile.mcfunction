# Fail because no profile

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

tellraw @s {text:"You must have a profile loaded to enter this room",color:"red"}
function exigence:hub/item_shop/access/fail/bounce