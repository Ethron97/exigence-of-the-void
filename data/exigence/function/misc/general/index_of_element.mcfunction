# Get index of element so we can remove it

## INPUT
#   SCORE #i Temp - initialize iteration index to 0
#   STORAGE exigence:temp i - initialize iteration index to 0
#   STORAGE exigence:temp array - copy of array to search
#   STORAGE exigence:temp search_value - value to get first index of

## OUTPUT
#   SCORE #i Temp - iteration ends on index that matches
#   STORAGE exigence:temp i

#====================================================================================================

# If index doesn't exist, fail
$execute unless data storage exigence:temp array[$(i)] run return run scoreboard players set #i Temp -1
#----------------------------------------------------------------------------------------------------

scoreboard players set #temp Temp 0
# If it does NOT get changed at this index, return
$execute store success score #temp Temp run data modify storage exigence:temp array[$(i)] set from storage exigence:temp search_value
execute if score #temp Temp matches 0 run return 1
#----------------------------------------------------------------------------------------------------
# Else iterate
scoreboard players add #i Temp 1
execute store result storage exigence:temp i int 1 run scoreboard players get #i Temp
function exigence:misc/general/index_of_element with storage exigence:temp
