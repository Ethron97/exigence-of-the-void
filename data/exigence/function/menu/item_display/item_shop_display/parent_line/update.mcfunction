# Update the block id of the line

## CONSTRAINTS
#   AS menu line

## INPUT
#   STR texture - minecraft block id

#=============================================================================================================

# DEBUG
#$say updating menu line $(texture)

$data modify entity @s block_state.Name set value "$(texture)"
