# Store player head information in temp storage

## CONSTRAINTS
#   AS player node

## OUTPUT
#   exigence:temp player_head

#====================================================================================================

data modify storage exigence:temp player_head set from entity @s equipment.mainhand
