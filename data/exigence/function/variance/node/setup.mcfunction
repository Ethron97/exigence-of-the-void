# Setup variance node

## CONSTRAINTS
#   AS VarianceNode

#=============================================================================================================

#say Setting up

# Tag remove
tag @s remove Setup

# Exclude CartCache as they already have a minecart placed with loot
execute if entity @s[tag=CartCache] run return 1

# Pulse default state for all active Variance nodes
execute as @s[tag=!CartCache] run function exigence:misc/node/pulse_state

# Generate and assign random values based on the max node state
execute if score @s Maxgame.node.node_state matches 2 store result score @s game.node.node_state run random value 1..2
execute if score @s Maxgame.node.node_state matches 3 store result score @s game.node.node_state run random value 1..3
execute if score @s Maxgame.node.node_state matches 4 store result score @s game.node.node_state run random value 1..4
execute if score @s Maxgame.node.node_state matches 5 store result score @s game.node.node_state run random value 1..5
execute if score @s Maxgame.node.node_state matches 6 store result score @s game.node.node_state run random value 1..6
execute if score @s Maxgame.node.node_state matches 7 store result score @s game.node.node_state run random value 1..7
execute if score @s Maxgame.node.node_state matches 8 store result score @s game.node.node_state run random value 1..8
execute if score @s Maxgame.node.node_state matches 9 store result score @s game.node.node_state run random value 1..9
execute if score @s Maxgame.node.node_state matches 10 store result score @s game.node.node_state run random value 1..10
execute if score @s Maxgame.node.node_state matches 11 store result score @s game.node.node_state run random value 1..11
# ... etc as needed

# All active setups pulse based on their random value
function exigence:misc/node/pulse_state
