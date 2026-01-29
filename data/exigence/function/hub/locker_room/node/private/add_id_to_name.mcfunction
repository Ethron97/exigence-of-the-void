# Add id to name for debug

## CONSTRAINTS
#   AS node

## INPUT
#   INT id

#====================================================================================================

$data modify entity @s CustomName.extra[0].text set value " $(id)"