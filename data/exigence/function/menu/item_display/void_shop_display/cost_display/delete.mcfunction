# Delete cost display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#====================================================================================================

# Remove tag
tag @s remove DisplayingCost

$execute at @s run kill @n[distance=..8,type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}]
