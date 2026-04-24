# Determine distance bracket

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

scoreboard players set @s game.player.sound_ping.echo_distance 10

## SWITCH
execute if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=..8,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance -2
execute if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=8..16,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance -1
execute if score @s game.player.effects.detection matches 1.. run return run function exigence:player/effects/detection/echo/get_distance_bracket_b
