# Handles displaying lore above the item display

## CONSTRAINTS
#   AS card display

#====================================================================================================

# Count how many lines there are for easy casing
scoreboard players set @s shop.frame.lore_lines 0
execute if data entity @s item.components."minecraft:lore"[10] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[9] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[8] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[7] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[6] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[5] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[4] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[3] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[2] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[1] run scoreboard players add @s shop.frame.lore_lines 1
execute if data entity @s item.components."minecraft:lore"[0] run scoreboard players add @s shop.frame.lore_lines 1

# Even if there is no lore, start process to summon name as well
execute at @s positioned ^ ^0.3 ^0.13 run function exigence:hub/ember_shop/menu/display/card/calls/private/display_loop
