# Removes text displays with the same IDID

## CONSTRAINTS
#   AS display to unhover

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#====================================================================================================

$execute at @s run kill @e[type=minecraft:text_display,scores={IDID=$(idid)},tag=PredungeonDisplay,tag=FromHover,distance=..1]
