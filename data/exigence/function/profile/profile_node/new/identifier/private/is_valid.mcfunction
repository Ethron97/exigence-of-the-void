# Check if identifier exists in array of invalid identifiers

## INPUT
#   STR identifier

#=============================================================================================================

scoreboard players set #valid Temp 1

$execute if data storage exigence:temp {invalid_identifiers:["$(identifier)"]} run scoreboard players set #valid Temp 0