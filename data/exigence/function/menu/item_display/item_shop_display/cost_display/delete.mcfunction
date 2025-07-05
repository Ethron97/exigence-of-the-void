# Delete cost display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#=============================================================================================================

#say Removing cost display

# Remove tag
tag @s remove DisplayingCost

$kill @e[type=minecraft:text_display,tag=CostDisplay,scores={IDID=$(idid)}]
$kill @e[type=minecraft:item_display,tag=ArtifactCostDisplay,scores={IDID=$(idid)}]
