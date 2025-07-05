execute if score @s mod_Flicker matches 0 run scoreboard players operation @e[distance=..16,type=minecraft:item,tag=Ember,scores={ObjectLevel=2}] GlowRemaining > 23 number
execute unless score @s mod_Flicker matches 1.. run return 1 
execute if score @s mod_Flicker matches 1 run scoreboard players operation @e[distance=..32,type=minecraft:item,tag=Ember,scores={ObjectLevel=2}] GlowRemaining > 23 number
execute if score @s mod_Flicker matches 2 run scoreboard players operation @e[distance=..40,type=minecraft:item,tag=Ember,scores={ObjectLevel=2}] GlowRemaining > 23 number
execute if score @s mod_Flicker matches 3 run scoreboard players operation @e[distance=..48,type=minecraft:item,tag=Ember,scores={ObjectLevel=2}] GlowRemaining > 23 number
execute if score @s mod_Flicker matches 4 run scoreboard players operation @e[distance=..56,type=minecraft:item,tag=Ember,scores={ObjectLevel=2}] GlowRemaining > 23 number
