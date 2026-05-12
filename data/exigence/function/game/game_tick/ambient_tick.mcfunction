# Function for all ambient effects / sounds / particles


# ============== FRIENDLY / POSITIVE =================

# TODO normalize glow particles and put in e_tick interaction
# BELLS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:marker,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:marker,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
# NPCS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
# Unlit particles
execute if score seconds.cooldown tick_counter matches 7 if score @s game.node.node_state matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2
execute if score seconds.cooldown tick_counter matches 17 if score @s game.node.node_state matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2
# Ambient glow particles around door handles
execute as @e[type=minecraft:item_display,tag=VaultHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:item_display,tag=DoorHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1