# Determine distance bracket

## CONSTRAINTS
#   AS/AT player with detection

#====================================================================================================

## SWITCH
execute if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=16..32,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance 0
execute if score @s game.player.mod.detection matches 1.. if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=32..48,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance 1
execute if score @s game.player.mod.detection matches 2.. if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=48..64,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance 2
execute if score @s game.player.mod.detection matches 3.. if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=64..80,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance 3
execute if score @s game.player.mod.detection matches 4.. if entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=80..96,limit=1] run return run scoreboard players set @s game.player.sound_ping.echo_distance 4
