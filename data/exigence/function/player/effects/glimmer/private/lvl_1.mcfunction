execute if score @s mod_Glimmer matches 0 run scoreboard players operation @e[distance=..16,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute unless score @s mod_Glimmer matches 1.. run return 1 
execute if score @s mod_Glimmer matches 1 run scoreboard players operation @e[distance=..24,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 2 run scoreboard players operation @e[distance=..32,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 3 run scoreboard players operation @e[distance=..40,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 4 run scoreboard players operation @e[distance=..48,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 5 run scoreboard players operation @e[distance=..56,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 6 run scoreboard players operation @e[distance=..64,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
execute if score @s mod_Glimmer matches 7 run scoreboard players operation @e[distance=..80,type=minecraft:item,tag=Treasure,scores={ObjectLevel=1}] GlowRemaining > 23 number
