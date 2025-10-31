# Called by game tick during gameplay, ambient particles around the exit so players know
#   where to return to

## CONSTRAINTS
#   AS/AT ExitNode armor_stand

#======================================================================================================

# Call height circle based on
#execute if score seconds.cooldown tick_counter matches 10 positioned ~ ~0.1 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 9 positioned ~ ~0.6 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 8 positioned ~ ~1.1 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 7 positioned ~ ~1.6 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 6 positioned ~ ~2.1 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 5 positioned ~ ~2.6 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 4 positioned ~ ~3.1 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 3 positioned ~ ~3.6 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 2 positioned ~ ~4.1 ~ run function exigence:game/exit/exit_node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 1 positioned ~ ~4.6 ~ run function exigence:game/exit/exit_node/ambient/particles

# Ambient particles
execute if entity @a[tag=ActivePlayer,distance=..32] run particle minecraft:dust_color_transition{from_color:[0.3f,0.2f,1.0f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ~ ~2 ~ 0.6 1.5 0.6 0.01 3

# Ambient portal sound controller
scoreboard players remove @s game.entity.ambient_noise_cooldown 1
execute if score @s game.entity.ambient_noise_cooldown matches ..0 run playsound minecraft:block.portal.ambient ambient @a[tag=ActivePlayer] ~ ~ ~ 2 0.8
execute if score @s game.entity.ambient_noise_cooldown matches ..0 store result score @s game.entity.ambient_noise_cooldown run random value 160..280

# If a player gets within 8 blocks, glow it
#execute if score Difficulty DungeonRun matches 4 
execute as @s[tag=!PortalDiscovered] if entity @a[tag=ActivePlayer,distance=..8] run function exigence:game/exit/exit_node/private/discover

# Rotate
#execute at @s as @e[distance=..5,type=block_display,tag=ExitPortalDisplay] at @s run tp @s ~ ~ ~ ~0.5 ~
