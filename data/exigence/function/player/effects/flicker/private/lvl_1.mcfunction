execute if score @s game.player.mod.flicker matches 0 run scoreboard players operation @e[distance=..16,type=minecraft:item,tag=Ember,scores={ObjectLevel=1}] game.entity.glow_remaining > 23 number
execute unless score @s game.player.mod.flicker matches 1.. run return 1 
execute if score @s game.player.mod.flicker matches 1 run scoreboard players operation @e[distance=..32,type=minecraft:item,tag=Ember,scores={ObjectLevel=1}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 2 run scoreboard players operation @e[distance=..40,type=minecraft:item,tag=Ember,scores={ObjectLevel=1}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 3 run scoreboard players operation @e[distance=..48,type=minecraft:item,tag=Ember,scores={ObjectLevel=1}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.flicker matches 4 run scoreboard players operation @e[distance=..56,type=minecraft:item,tag=Ember,scores={ObjectLevel=1}] game.entity.glow_remaining > 23 number
