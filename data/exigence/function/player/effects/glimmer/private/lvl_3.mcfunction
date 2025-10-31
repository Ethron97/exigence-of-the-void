execute if score @s game.player.mod.glimmer matches 0 run scoreboard players operation @e[distance=..16,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute unless score @s game.player.mod.glimmer matches 1.. run return 1 
execute if score @s game.player.mod.glimmer matches 1 run scoreboard players operation @e[distance=..24,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 2 run scoreboard players operation @e[distance=..32,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 3 run scoreboard players operation @e[distance=..40,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 4 run scoreboard players operation @e[distance=..48,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 5 run scoreboard players operation @e[distance=..56,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 6 run scoreboard players operation @e[distance=..64,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 7 run scoreboard players operation @e[distance=..80,type=minecraft:item,tag=Treasure,scores={ObjectLevel=3}] game.entity.glow_remaining > 23 number
