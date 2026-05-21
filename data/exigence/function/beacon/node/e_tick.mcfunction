# Called from game tick e tick

## CONSTRAINTS
#   AS/AT beacon node

#====================================================================================================

# Lit particles
execute if score @s game.node.node_state matches 1 run particle minecraft:flame ~ ~2 ~ 0.8 1.2 0.8 0 1
execute if score @s game.node.node_state matches 2 run particle minecraft:soul_fire_flame ~ ~2 ~ 0.8 1.2 0.8 0 2
execute if score @s game.node.node_state matches 3.. run particle minecraft:soul_fire_flame ~ ~2 ~ 0.8 1.2 0.8 0 5

# Beacon light loop
execute if score @s game.node.node_state matches 3..10 run function exigence:beacon/node/light_beacon

# TODO
# Update transmission