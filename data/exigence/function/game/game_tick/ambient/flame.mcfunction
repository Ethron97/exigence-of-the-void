# Handles flame related ambience

## CONSTRAINTS
#   IF flame of ardor run

#=======================================================================================================

# Ardor flame particles
execute at @e[type=minecraft:item,tag=ArdorEmber] run function exigence:game/game_tick/ambient/private/flame_particles


# Sound
scoreboard players remove @a[tag=ActivePlayer,scores={dead=0,game.player.sound_ping.flame_cooldown=1..}] game.player.sound_ping.flame_cooldown 1

execute as @a[tag=ActivePlayer,scores={dead=0,game.player.sound_ping.flame_cooldown=0}] at @s run function exigence:player/effects/detection/flame/ping_flame
# Call every second also, to catch cases where player is moving towards flame but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 18 as @a[tag=ActivePlayer,scores={dead=0,game.player.sound_ping.flame_cooldown=1..}] at @s run function exigence:player/effects/detection/flame/ping_flame

