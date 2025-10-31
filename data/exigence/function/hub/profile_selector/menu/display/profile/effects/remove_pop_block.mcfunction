# Deselect a profile from the profile selector

## CONSTRAINTS
#   AT location

## INPUT
#   WITH data item.components."minecraft:custom_data"

#=============================================================================================================

$kill @n[distance=..24,type=block_display,tag=PopBlock,scores={IDID=$(idid)}]
