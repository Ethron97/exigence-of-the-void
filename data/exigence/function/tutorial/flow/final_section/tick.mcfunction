# Tick that only gets called when player is in the final tutorial section

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

## PORTAL
# Ambient particles
execute at @n[distance=..1000,type=marker,tag=TutorialExitNode] if entity @a[distance=..32,tag=Tutorial] run particle minecraft:dust_color_transition{from_color:[0.3f,0.2f,1.0f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ~ ~2 ~ 0.6 1.5 0.6 0.01 3
# Ambient portal sound controller
execute as @n[distance=..1000,type=marker,tag=TutorialExitNode] run scoreboard players remove @s game.entity.ambient_noise_cooldown 1
execute as @n[distance=..1000,type=marker,tag=TutorialExitNode] if score @s game.entity.ambient_noise_cooldown matches ..0 at @s run playsound minecraft:block.portal.ambient ambient @p[distance=..32,tag=Tutorial] ~ ~ ~ 2 0.8
execute as @n[distance=..1000,type=marker,tag=TutorialExitNode] if score @s game.entity.ambient_noise_cooldown matches ..0 store result score @s game.entity.ambient_noise_cooldown run random value 160..280

# ECHO SHARD
# Ambient particles around the Echo Shard
execute at @e[distance=..1000,type=minecraft:item,tag=EchoShard] if score seconds.cooldown tick_counter matches 5 run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0 2

# Ambient tinkle around the Echo Shard
scoreboard players remove @a[tag=Tutorial,scores={dead=0,game.player.sound_ping.echo_cooldown=1..}] game.player.sound_ping.echo_cooldown 1

execute as @a[tag=Tutorial,scores={dead=0,game.player.sound_ping.echo_cooldown=0}] at @s run function exigence:player/effects/detection/echo/ping_echo
# Call every second also, to catch cases where player is moving towards echo but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 11 as @a[tag=Tutorial,scores={dead=0,game.player.sound_ping.echo_cooldown=1..}] at @s run function exigence:player/effects/detection/echo/ping_echo

function exigence:tutorial/flow/final_section/heartbeat_tick
execute if score Menace Tutorial matches ..19 run function exigence:tutorial/flow/final_section/deck_tick
execute if score Menace Tutorial matches 20.. if score MaxMenace Tutorial matches 0 run function exigence:tutorial/flow/final_section/max_menace
execute if score MaxMenace Tutorial matches 1 run function exigence:tutorial/flow/final_section/max_menace_tick

