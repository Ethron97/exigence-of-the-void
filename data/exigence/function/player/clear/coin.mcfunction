# Called by game loss to clear coins up until CoinKeep

## CONSTRAINTS
#   AS player

#===========================================================================================================

# Get current coin count
execute store result score #coins Temp run clear @s minecraft:gold_nugget 0

# Return if at/below CoinKeep
execute if score #coins Temp <= @s mod_CoinKeep run return 1

# Clear one coin
clear @s minecraft:gold_nugget 1

# Iterate
function exigence:player/clear/coin
