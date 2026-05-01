## CONSTRAINTS
#   AS altarnode

#====================================================================================================

# Remove interaction
function exigence:altar/node/remove_interaction

# Set block to unlit campfire
execute at @s run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# Set game.node.node_state to -1
scoreboard players reset @s game.node.node_state
scoreboard players reset @s Random 
tag @s remove Red
tag @s remove ChooseLock