# Get random node state based on max

## CONSTRAINTS
#   AS variance node

#====================================================================================================

execute if score @s node.property.max_node_state matches 2 store result score @s game.node.node_state run return run random value 1..2
execute if score @s node.property.max_node_state matches 3 store result score @s game.node.node_state run return run random value 1..3
execute if score @s node.property.max_node_state matches 4 store result score @s game.node.node_state run return run random value 1..4
execute if score @s node.property.max_node_state matches 5 store result score @s game.node.node_state run return run random value 1..5
execute if score @s node.property.max_node_state matches 6 store result score @s game.node.node_state run return run random value 1..6
execute if score @s node.property.max_node_state matches 7 store result score @s game.node.node_state run return run random value 1..7
execute if score @s node.property.max_node_state matches 8 store result score @s game.node.node_state run return run random value 1..8
execute if score @s node.property.max_node_state matches 9 store result score @s game.node.node_state run return run random value 1..9
execute if score @s node.property.max_node_state matches 10 store result score @s game.node.node_state run return run random value 1..10
execute if score @s node.property.max_node_state matches 11 store result score @s game.node.node_state run return run random value 1..11
# ... etc as needed