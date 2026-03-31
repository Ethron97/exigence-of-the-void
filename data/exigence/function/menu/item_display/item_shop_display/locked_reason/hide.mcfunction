# Delete locked reason display

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data" for id

#====================================================================================================

# Remove tag
tag @s remove DisplayingLockedReason

$execute at @s run kill @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=LockedReasonDisplay,distance=..5]
