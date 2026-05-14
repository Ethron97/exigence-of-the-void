# Tick that only gets called when player is in the final tutorial section

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

## PORTAL
# Ambient particles
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialExitNode] at @s run function exigence:tutorial/flow/final_section/private/exit_portal
# ECHO SHARD
# Ambient particles around the Echo Shard
execute at @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:item,tag=EchoShard] if score seconds.cooldown tick_counter matches 5 run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0 2

# Ambient tinkle around the Echo Shard
scoreboard players remove @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,scores={dead=0,game.player.sound_ping.echo_cooldown=1..},tag=Tutorial] game.player.sound_ping.echo_cooldown 1

execute as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,scores={dead=0,game.player.sound_ping.echo_cooldown=0},tag=Tutorial] at @s run function exigence:player/effects/detection/echo/ping_echo
# Call every second also, to catch cases where player is moving towards echo but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 11 as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,scores={dead=0,game.player.sound_ping.echo_cooldown=1..},tag=Tutorial] at @s run function exigence:player/effects/detection/echo/ping_echo

function exigence:tutorial/flow/final_section/heartbeat_tick
execute if score tut.menace hub.tutorial matches ..19 run function exigence:tutorial/flow/final_section/deck_tick
execute if score tut.menace hub.tutorial matches 20.. if score tut.max_menace hub.tutorial matches 0 run function exigence:tutorial/flow/final_section/max_menace
execute if score tut.max_menace hub.tutorial matches 1 run function exigence:tutorial/flow/final_section/max_menace_tick

