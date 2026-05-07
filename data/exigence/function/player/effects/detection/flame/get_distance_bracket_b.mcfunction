# Determine distance bracket

## CONSTRAINTS
#   AS/AT player with detection

#====================================================================================================

## SWITCH
execute if entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=16..32,limit=1] run return run scoreboard players set @s game.player.sound_ping.flame_distance 0
execute if score @s game.player.mod.detection matches 1.. if entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=32..48,limit=1] run return run scoreboard players set @s game.player.sound_ping.flame_distance 1
execute if score @s game.player.mod.detection matches 2.. if entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=48..64,limit=1] run return run scoreboard players set @s game.player.sound_ping.flame_distance 2
execute if score @s game.player.mod.detection matches 3.. if entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=64..80,limit=1] run return run scoreboard players set @s game.player.sound_ping.flame_distance 3
execute if score @s game.player.mod.detection matches 4.. if entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=80..96,limit=1] run return run scoreboard players set @s game.player.sound_ping.flame_distance 4
