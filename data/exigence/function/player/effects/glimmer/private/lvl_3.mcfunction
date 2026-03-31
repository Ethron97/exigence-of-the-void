execute if score @s game.player.mod.glimmer matches 0 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..16] game.entity.glow_remaining > 23 number
execute unless score @s game.player.mod.glimmer matches 1.. run return 1 
execute if score @s game.player.mod.glimmer matches 1 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..24] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 2 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..32] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 3 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..40] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 4 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..48] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 5 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..56] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 6 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..64] game.entity.glow_remaining > 23 number
execute if score @s game.player.mod.glimmer matches 7 run scoreboard players operation @e[type=minecraft:item,scores={ObjectLevel=3},tag=Treasure,distance=..80] game.entity.glow_remaining > 23 number
