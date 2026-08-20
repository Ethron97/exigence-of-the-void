# Reset/deactivate bell node

## CONSTRAINTS
#   AS/AT BellNode

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3 Bell) Deactivate bell node

tag @s remove Active
tag @s remove Smashed
tag @s remove ETICK
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:bell

scoreboard players reset @s game.node.bell.ring_cooldown

# Kill connected interaction
function exigence:bell/node/remove_interaction
