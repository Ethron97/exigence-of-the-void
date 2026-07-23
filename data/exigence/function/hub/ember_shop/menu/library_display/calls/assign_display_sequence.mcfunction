# Assign display sequence based on rarity

## CONSTRAINTS
#   AS new card display

#====================================================================================================

execute if score @s ember_shop.rarity matches 1 run scoreboard players add #common ember_shop.display_sequence 1
execute if score @s ember_shop.rarity matches 2 run scoreboard players add #uncommon ember_shop.display_sequence 1
execute if score @s ember_shop.rarity matches 3 run scoreboard players add #rare ember_shop.display_sequence 1
execute if score @s ember_shop.rarity matches 4 run scoreboard players add #legendary ember_shop.display_sequence 1

execute if score @s ember_shop.rarity matches 1 run scoreboard players operation @s ember_shop.display_sequence = #common ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 2 run scoreboard players operation @s ember_shop.display_sequence = #uncommon ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 3 run scoreboard players operation @s ember_shop.display_sequence = #rare ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 4 run scoreboard players operation @s ember_shop.display_sequence = #legendary ember_shop.display_sequence

# Set teleport duration = sequence+2
scoreboard players operation #temp Temp = @s ember_shop.display_sequence
scoreboard players add #temp Temp 2
execute store result entity @s teleport_duration int 1 run scoreboard players get #temp Temp
