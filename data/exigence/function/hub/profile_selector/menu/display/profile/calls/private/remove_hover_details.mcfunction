# Removes text displays with the same IDID

## CONSTRAINTS
#   AS profile display to unhover

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

$execute at @s run kill @e[distance=..16,type=minecraft:text_display,tag=HoverDetails,scores={IDID=$(idid)}]
