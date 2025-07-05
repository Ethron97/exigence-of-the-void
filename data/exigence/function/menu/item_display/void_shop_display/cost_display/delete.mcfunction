# Delete cost display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#=============================================================================================================

# Remove tag
tag @s remove DisplayingCost

$kill @e[type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}]
