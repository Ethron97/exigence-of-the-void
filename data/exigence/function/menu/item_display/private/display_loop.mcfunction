# Summons a single text display to represent a line of lore; Iterates as long as there is lore to loop

## CONSTRAINTS
# AS item_display

## INPUT
#   FLOAT Rot0 - 0.0f
#   FLOAT Rot1 - 0.0f

#=============================================================================================================

# Decrement lore lines
scoreboard players remove @s shop.frame.lore_lines 1

#$say loring Rotation:[$(Rot0),$(Rot1)]

# Summon text display
$summon minecraft:text_display ~ ~ ~ {billboard:"fixed",alignment:"left",Tags:["ItemDetails","NewTextDisplay","MergeRotation"],text:{text:""},Rotation:[$(Rot0),$(Rot1)],background:2017213500,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID

# Merge text based on how many lore lines there are
execute if score @s shop.frame.lore_lines matches -1 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_name"
execute if score @s shop.frame.lore_lines matches 0 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[0]
execute if score @s shop.frame.lore_lines matches 1 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[1]
execute if score @s shop.frame.lore_lines matches 2 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[2]
execute if score @s shop.frame.lore_lines matches 3 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[3]
execute if score @s shop.frame.lore_lines matches 4 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[4]
execute if score @s shop.frame.lore_lines matches 5 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[5]
execute if score @s shop.frame.lore_lines matches 6 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[6]
execute if score @s shop.frame.lore_lines matches 7 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[7]
execute if score @s shop.frame.lore_lines matches 8 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[8]
execute if score @s shop.frame.lore_lines matches 9 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[9]
execute if score @s shop.frame.lore_lines matches 10 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:lore"[10]

scoreboard players set #skip Temp 0

# Skip if empty
execute if data entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] {text:""} run scoreboard players set #skip Temp 1

execute if score #skip Temp matches 1 run kill @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay]

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay

# Continue loop if lore remains
#   If skip, don't move upwards
#$execute if score @s shop.frame.lore_lines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.275 ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
$execute if score @s shop.frame.lore_lines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.20625 ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
#$execute if score @s shop.frame.lore_lines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.1375 ^ run function exigence:menu/item_display/private/display_loop { {Rot0:$(Rot0),Rot1:$(Rot1)}
$execute if score @s shop.frame.lore_lines matches 0.. if score #skip Temp matches 1 positioned ^ ^ ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
