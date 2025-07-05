# Handles displaying lore above the item display
#  ( TODO) Also displays "keywords" and their descriptions below the item display (can be disabled)

## CONSTRAINTS
# AS item_display

## INPUT
#   FLOAT Rot0 - 0.0f
#   FLOAT Rot1 - 0.0f

#=============================================================================================================

#$say Display item details $(Rot0) $(Rot1)

# Count how many lines there are for easy casing
scoreboard players set @s LoreLines 0
execute if data entity @s item.components."minecraft:lore"[10] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[9] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[8] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[7] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[6] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[5] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[4] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[3] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[2] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[1] run scoreboard players add @s LoreLines 1
execute if data entity @s item.components."minecraft:lore"[0] run scoreboard players add @s LoreLines 1

# Even if there is no lore, start process to summon name as well
$execute at @s[tag=!VoidShopDisplay,scores={ItemShopTier=..5}] positioned ^ ^0.5 ^0.12 rotated ~ ~$(Rot1) run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
$execute at @s[tag=!VoidShopDisplay,scores={ItemShopTier=6}] positioned ^ ^0.5 ^0.12 rotated ~ ~7 run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:7.0f}
$execute at @s[tag=!VoidShopDisplay,scores={ItemShopTier=7}] positioned ^ ^0.5 ^0.12 rotated ~ ~15 run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:15.0f}
$execute at @s[tag=!VoidShopDisplay,scores={ItemShopTier=8}] positioned ^ ^0.5 ^0.12 rotated ~ ~30 run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:30.0f}
$execute at @s[tag=VoidShopDisplay] positioned ^ ^0.2 ^0.12 run function exigence:menu/item_display/private/display_loop_alt {Rot0:$(Rot0),Rot1:$(Rot1)}

# Start at 0.45, increment by 0.725
#0.725
