# Respawn bell, called by bell_tick

## CONSTRAINTS
#   AS bellnode

#================================================================================================================

#say Respawn bell

execute at @s run setblock ~ ~ ~ minecraft:bell[attachment=ceiling]

# Setup interaction
function exigence:bell/node/setup_interaction
