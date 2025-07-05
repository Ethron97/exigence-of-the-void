# Macro to call the left click function from the item display item data

## CONSTRAINTS
#   AS item display

## INPUTS
#   STR function_left - Full function path

#=============================================================================================================

# DEBUG
#$say call function left $(function_left)

$execute as @s run function $(function_left)
