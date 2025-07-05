# Handles echo related ambience

## CONSTRAINTS
# IF all_echos_found:0

#=======================================================================================================

# ECHO SHARD
# Ambient particles around the Echo Shard
execute at @e[type=minecraft:item,tag=EchoShard] if score SecondsCooldown TickCounter matches 5 run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0 2

# Ambient tinkle around the Echo Shard
scoreboard players remove @a[tag=ActivePlayer,scores={dead=0,PingEchoCooldown=1..}] PingEchoCooldown 1

execute as @a[tag=ActivePlayer,scores={dead=0,PingEchoCooldown=0}] at @s run function exigence:player/effects/detection/echo/ping_echo
# Call every second also, to catch cases where player is moving towards echo but the sound delay is too long
execute if score SecondsCooldown TickCounter matches 11 as @a[tag=ActivePlayer,scores={dead=0,PingEchoCooldown=1..}] at @s run function exigence:player/effects/detection/echo/ping_echo
