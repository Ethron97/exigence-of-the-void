# Removes text displays with the same IDID

## CONSTRAINTS
# AS item_display to unhover

## INPUT
# WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

$kill @e[type=minecraft:text_display,tag=ItemDetails,scores={IDID=$(idid)}]
