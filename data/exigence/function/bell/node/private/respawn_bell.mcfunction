# Respawn bell, called by bell_tick

## CONSTRAINTS
#   AS bellnode

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) Respawn bell

execute at @s run setblock ~ ~ ~ minecraft:bell[attachment=ceiling]

# Setup interaction
function exigence:bell/node/setup_interaction
