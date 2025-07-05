# Called by cash_crop/play

## CONSTRAINTS
#   AS player

#=================================================================================

# Get berries in inventory
execute store result score #berries Temp run clear @s #exigence:berry 0

# Divide by 2
scoreboard players operation #berries Temp /= 2 number

# Store in data and call remove function
execute store result storage exigence:temp var int 1 run scoreboard players get #berries Temp
function exigence:cards/cash_crop/macro with storage exigence:temp

# Get highest
scoreboard players operation #highest_berries Temp = #berries Temp
