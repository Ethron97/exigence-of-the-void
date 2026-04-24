# Reset/deactivate bell node

## CONSTRAINTS
#   AS/AT BellNode

#====================================================================================================

tag @s remove Active
tag @s remove Smashed
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:bell

scoreboard players set @s game.node.bell.ring_cooldown 0

# Kill connected interaction
function exigence:bell/node/remove_interaction
