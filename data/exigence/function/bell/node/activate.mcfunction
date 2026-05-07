# Activate bell node

## CONSTRAINTS
#   AS/AT BellNode

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) I am a bell activating

tag @s add Active
tag @s add ETICK
setblock ~ ~ ~ minecraft:bell[attachment=ceiling]

# Setup interaction
function exigence:bell/node/setup_interaction
