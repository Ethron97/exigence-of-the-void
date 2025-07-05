scoreboard players set #valid TastySurprise 0
execute if score @s TastySurprise matches 0 if block ~1 ~ ~-1 minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 1 if block ~1 ~ ~ minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 2 if block ~1 ~ ~1 minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 3 if block ~ ~ ~1 minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 4 if block ~-1 ~ ~1 minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 5 if block ~-1 ~ ~ minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 6 if block ~-1 ~ ~-1 minecraft:air run scoreboard players set #valid TastySurprise 1
execute if score @s TastySurprise matches 7 if block ~ ~ ~-1 minecraft:air run scoreboard players set #valid TastySurprise 1