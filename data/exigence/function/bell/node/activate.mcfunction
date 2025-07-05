# Activate bell node

## CONSTRAINTS
# AS BellNode

#===============================

#say I am a bell activating
tag @s add Active
execute at @s run setblock ~ ~ ~ minecraft:bell[attachment=ceiling]

# Setup interaction
function exigence:bell/node/setup_interaction
