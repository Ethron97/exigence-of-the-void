# Ambient tick based on node state

## CONSTRAINTS
#   AS/AT AltarNode

#==============================================================================================================

# Unlit particles
execute if score seconds.cooldown tick_counter matches 7 if score @s game.node.node_state matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2
execute if score seconds.cooldown tick_counter matches 17 if score @s game.node.node_state matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2
# Lit becaons
execute if score @s game.node.node_state matches 1 run particle minecraft:flame ~ ~2 ~ 0.8 1.2 0.8 0 1
execute if score @s game.node.node_state matches 2 run particle minecraft:soul_fire_flame ~ ~2 ~ 0.8 1.2 0.8 0 2
execute if score @s game.node.node_state matches 3.. run particle minecraft:soul_fire_flame ~ ~2 ~ 0.8 1.2 0.8 0 5
