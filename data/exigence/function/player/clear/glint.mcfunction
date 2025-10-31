# Called by game loss to clear glints up until GlintKeep

## CONSTRAINTS
#   AS player

#===========================================================================================================

# Get current glint count
execute store result score #glint Temp run clear @s minecraft:diamond 0

# Return if at/below glintKeep
execute if score #glint Temp <= @s game.player.mod.glint_keep run return 1

# Clear one glint
clear @s minecraft:diamond 1

# Iterate
function exigence:player/clear/glint
