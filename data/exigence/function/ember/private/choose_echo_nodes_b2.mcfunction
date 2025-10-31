# Reduce bounded difficulty to single difficulty tier, based on settings

## INPUT
#   min_difficulty
#   max_difficulty
#   level

# SCORE #temp Temp initialized to number of times to iterate this function

## EXPECTS
# exigence:dungeon echo_selection_type
#   0 = node based (set range of tiers, any node within that range is valid)
#   1 = difficulty based (choose one tier, then node in that tier)
#   2 = difficulty based advantage two attempts, roll twice pick higher

#==========================================================================================================

say Choose echo nodes b2

# Reduce iteration score
scoreboard players remove #temp Temp 1

# Roll distribution based on given min/max
$execute store result score #roll1 Temp run random value $(min_difficulty)..$(max_difficulty)
$execute store result score #roll2 Temp run random value $(min_difficulty)..$(max_difficulty)

# Bound the rolled amounts
$scoreboard players operation #roll1 Temp > $(level)1 number
$scoreboard players operation #roll1 Temp < $(level)5 number
$scoreboard players operation #roll2 Temp > $(level)1 number
$scoreboard players operation #roll2 Temp < $(level)5 number

# Get average
#   I realize how dumb this is as I program it
scoreboard players operation #rollAvg Temp = #roll1 Temp
scoreboard players operation #rollAvg Temp += #roll2 Temp
scoreboard players operation #rollAvg Temp /= 2 number

# Get higher of two
scoreboard players operation #rollHigher Temp = #roll1 Temp
scoreboard players operation #rollHigher Temp > #roll2 Temp

# Get final difficulty based on echo_selection_type
execute if data storage exigence:dungeon_settings {echo_selection_type:0} run say Select random node from tier range (standard)
execute if data storage exigence:dungeon_settings {echo_selection_type:1} run say Select node from random tier
execute if data storage exigence:dungeon_settings {echo_selection_type:2} run say Select node from highest of two random tiers
execute if data storage exigence:dungeon_settings {echo_selection_type:0} run function exigence:ember/private/choose_echo_nodes_c_alt with storage exigence:echo_selection
execute if data storage exigence:dungeon_settings {echo_selection_type:1} store result storage exigence:echo_selection chosen_difficulty int 1 run scoreboard players get #roll1 Temp
execute if data storage exigence:dungeon_settings {echo_selection_type:2} store result storage exigence:echo_selection chosen_difficulty int 1 run scoreboard players get #rollHigher Temp

# Call subfunction
execute unless data storage exigence:dungeon_settings {echo_selection_type:0} run function exigence:ember/private/choose_echo_nodes_c with storage exigence:echo_selection

# Handle iteration
execute if score #temp Temp matches 1.. run function exigence:ember/private/choose_echo_nodes_b2 with storage exigence:echo_selection

