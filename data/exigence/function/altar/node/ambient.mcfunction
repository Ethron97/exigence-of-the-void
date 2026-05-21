# Ambient tick based on node state
#   Glow particles are handled on interaction level

## CONSTRAINTS
#   AS/AT AltarNode

#====================================================================================================

execute if score toggle.altar debug matches 1 if score debug.level debug matches 5.. run say (D5 Altar) Ambient altar tick

# Radiant altars
execute if score @s game.node.node_state matches 2 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.5 0.4 0.01 1

# Red-able altars (inner fire)
#   Can't do this as interaction because we want to check the tag and node state
execute if score seconds.cooldown tick_counter matches 2 if entity @s[tag=!Red] if score @s game.node.node_state matches 1.. run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~0.7 ~ 0.5 0.2 0.5 0 2
execute if score seconds.cooldown tick_counter matches 12 if entity @s[tag=!Red] if score @s game.node.node_state matches 1.. run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~0.7 ~ 0.5 0.2 0.5 0 2
