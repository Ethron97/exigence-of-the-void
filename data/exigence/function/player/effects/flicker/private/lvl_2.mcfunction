execute if score @s game.player.mod.flicker matches 0 run scoreboard players operation @e[type=minecraft:item,scores={game.entity.object_level=2},tag=Ember,distance=..16] game.entity.glow_remaining > 23 number
execute unless score @s game.player.mod.flicker matches 1.. run return 1 
execute if score @s game.player.mod.flicker matches 1 run scoreboard players operation @e[type=minecraft:item,scores={game.entity.object_level=2},tag=Ember,distance=..32] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 2 run scoreboard players operation @e[type=minecraft:item,scores={game.entity.object_level=2},tag=Ember,distance=..40] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 3 run scoreboard players operation @e[type=minecraft:item,scores={game.entity.object_level=2},tag=Ember,distance=..48] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 4 run scoreboard players operation @e[type=minecraft:item,scores={game.entity.object_level=2},tag=Ember,distance=..56] game.entity.glow_remaining > 23 number
