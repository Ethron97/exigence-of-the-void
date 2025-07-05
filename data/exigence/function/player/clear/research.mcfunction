# Called by game loss to clear fragments up until ReesearchKeep

## CONSTRAINTS
#   AS player

#===========================================================================================================

# Get current fragment count
execute store result score #fragments Temp run clear @s minecraft:prize_pottery_sherd 0

# Return if at/below FragmentKeep
execute if score #fragments Temp <= @s mod_ResearchKeep run return 1

# Clear one fragment
clear @s minecraft:prize_pottery_sherd 1

# Iterate
function exigence:player/clear/research
