## CONSTRAINTS
#   AS BeaconNode
#   AT BeaconNode

#================================================================================================

# Setup interaction
function exigence:beacon/node/setup_interaction

# Set block to unlit campfire
#execute at @s run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# Clone unlit beacon
clone -405 -43 -122 -401 -41 -118 ~-2 ~-2 ~-2

# Set node state
scoreboard players set @s game.node.node_state 0
