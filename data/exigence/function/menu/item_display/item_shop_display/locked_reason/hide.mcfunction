# Delete locked reason display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#=============================================================================================================

# Remove tag
tag @s remove DisplayingLockedReason

$kill @e[type=minecraft:text_display,tag=LockedReasonDisplay,scores={IDID=$(idid)}]
