# Drop glint above GlintKeep

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Get current glint count
execute store result score #glints Temp run clear @s minecraft:diamond 0

# If glint is LE GlintKeep, just return as there is nothing to drop
execute if score #glints Temp <= @s game.player.mod.glint_keep run return 1

# Subtract GlintKeep
scoreboard players operation #glints Temp -= @s game.player.mod.glint_keep

# Copy score to storage
execute store result storage exigence:give amount int 1 run scoreboard players get #glints Temp

# Call macro to drop AMOUNT and clear AMOUNT
function exigence:player/drop/glint/macro with storage exigence:give
