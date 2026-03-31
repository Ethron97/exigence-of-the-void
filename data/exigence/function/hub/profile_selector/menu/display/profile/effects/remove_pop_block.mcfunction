# Deselect a profile from the profile selector

## CONSTRAINTS
#   AT location

## INPUT
#   WITH data item.components."minecraft:custom_data"

#====================================================================================================

$kill @n[type=block_display,scores={IDID=$(idid)},tag=PopBlock,distance=..16]
