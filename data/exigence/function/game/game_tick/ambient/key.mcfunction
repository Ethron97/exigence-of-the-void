# Handles level key related ambience

#=======================================================================================================

# LEVEL KEY
# Ambient particles around the Key if a living player is nearby
execute if score SecondsCooldown TickCounter matches 5 at @e[type=minecraft:item,tag=LevelKey] if entity @a[tag=ActivePlayer,scores={dead=0},distance=..20] run particle minecraft:soul ~ ~0.8 ~ 0.4 1.0 0.4 0 2
execute if score SecondsCooldown TickCounter matches 15 at @e[type=minecraft:item,tag=LevelKey] if entity @a[tag=ActivePlayer,scores={dead=0},distance=..20] run particle minecraft:soul ~ ~0.8 ~ 0.4 1.0 0.4 0 2

# Sound
scoreboard players remove @a[tag=ActivePlayer,scores={dead=0,PingKeyCooldown=1..}] PingKeyCooldown 1

execute as @a[tag=ActivePlayer,scores={dead=0,PingKeyCooldown=0}] at @s run function exigence:player/effects/detection/key/ping_key
# Call every second also, to catch cases where player is moving towards key but the sound delay is too long
execute if score SecondsCooldown TickCounter matches 18 as @a[tag=ActivePlayer,scores={dead=0,PingKeyCooldown=1..}] at @s run function exigence:player/effects/detection/key/ping_key
