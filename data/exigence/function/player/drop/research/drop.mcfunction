# Drop research above ResearchKeep

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Get current research count
execute store result score #research Temp run clear @s minecraft:prize_pottery_sherd 0

# If research is LE ResearchKeep, just return as there is nothing to drop
execute if score #research Temp <= @s game.player.mod.research_keep run return 1

# Subtract ResearchKeep
scoreboard players operation #research Temp -= @s game.player.mod.research_keep

# Copy score to storage
execute store result storage exigence:give amount int 1 run scoreboard players get #research Temp

# Call macro to drop AMOUNT and clear AMOUNT
function exigence:player/drop/research/macro with storage exigence:give
