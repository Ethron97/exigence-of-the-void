# Prepare beacon node for game

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

# Enable ticking
tag @s add ETICK

# Setup interaction
function exigence:beacon/node/setup/setup_interaction

# Set block to unlit campfire
#execute at @s run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# Clone unlit beacon
execute at @s run clone -405 -43 -122 -401 -41 -118 ~-2 ~-2 ~-2

# Set node state
scoreboard players set @s game.node.node_state 0

# Summon waypoint
execute at @s run function exigence:beacon/node/waypoint/summon