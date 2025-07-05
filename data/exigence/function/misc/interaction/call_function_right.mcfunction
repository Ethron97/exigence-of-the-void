# Macro to call the right click function from the item display item data

## CONSTRAINTS
#   AS item display

## INPUTS
#   STR function_right - Full function path

#=============================================================================================================

# DEBUG
#$say call function right $(function_right)

$execute as @s run function $(function_right)
