# Handles all subcommands to completely remove an item display

## CONSTRAINTS
# AS item_display to be removed

## INPUT
# WITH item.components."minecraft:custom_data" for idid field

#=============================================================================================================

$kill @e[scores={IDID=$(idid)}]
