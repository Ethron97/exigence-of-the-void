# Delete cost display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#=============================================================================================================

$kill @e[type=minecraft:interaction,scores={IDID=$(idid)}]
