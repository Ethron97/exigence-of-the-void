# Delete cost display

## CONSTRAINTS
#   AS item_display (tag=DisplayingCost)

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#====================================================================================================

#say Removing cost display

# Remove tag
tag @s remove DisplayingCost

$execute at @s run kill @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=CostDisplay,distance=..5]
$execute at @s run kill @n[type=minecraft:item_display,scores={IDID=$(idid)},tag=ArtifactCostDisplay,distance=..5]
