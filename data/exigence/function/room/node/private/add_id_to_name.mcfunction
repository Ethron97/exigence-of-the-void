# Add profile id to name for debug

## CONSTRAINTS
#   AS profile node

## INPUT
#   INT id

#====================================================================================================

$data modify entity @s CustomName.extra[0].text set value " $(id)"