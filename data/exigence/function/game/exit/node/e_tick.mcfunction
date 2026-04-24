# Called by game_tick/e_tick/e_tick_marker
# Ambient particles around the exit so players know where to return to

## CONSTRAINTS
#   AS/AT ExitNode

#====================================================================================================

# Ambient particles
execute if entity @a[tag=ActivePlayer,distance=..32] run particle minecraft:dust_color_transition{from_color:[0.3f,0.2f,1.0f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ~ ~2 ~ 0.6 1.5 0.6 0.01 3

# Ambient portal sound controller
scoreboard players remove @s game.entity.ambient_noise_cooldown 1
# Playsound and reset timer
execute if score @s game.entity.ambient_noise_cooldown matches ..0 run function exigence:game/exit/node/ambient/noise

# If a player gets within 8 blocks, glow it
#execute if score game.difficulty game.state matches 4 
execute if entity @s[tag=!PortalDiscovered] if entity @a[tag=ActivePlayer,distance=..8] run function exigence:game/exit/node/private/discover

# Exit check
# The player is at the start/exit with an Echo shard in their inventory (victory)
execute as @a[scores={dead=0},tag=ActivePlayer,distance=..2] run function exigence:game/exit/exit_portal/exit_check

# If exit portal is open, tick
execute if entity @s[tag=OpenedPortal] run function exigence:game/exit/exit_portal/tick

# Old systems
# Call height circle based on
#execute if score seconds.cooldown tick_counter matches 10 positioned ~ ~0.1 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 9 positioned ~ ~0.6 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 8 positioned ~ ~1.1 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 7 positioned ~ ~1.6 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 6 positioned ~ ~2.1 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 5 positioned ~ ~2.6 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 4 positioned ~ ~3.1 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 3 positioned ~ ~3.6 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 2 positioned ~ ~4.1 ~ run function exigence:game/exit/node/ambient/particles
#execute if score seconds.cooldown tick_counter matches 1 positioned ~ ~4.6 ~ run function exigence:game/exit/node/ambient/particles

# Rotate
#execute at @s as @e[distance=..5,type=minecraft:block_display,tag=ExitPortalDisplay] at @s run tp @s ~ ~ ~ ~0.5 ~
