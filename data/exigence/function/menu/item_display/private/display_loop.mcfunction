# Summons a single text display to represent a line of lore; Iterates as long as there is lore to loop

## CONSTRAINTS
# AS item_display

## INPUT
#   FLOAT Rot0 - 0.0f
#   FLOAT Rot1 - 0.0f

#=============================================================================================================

# Decrement lore lines
scoreboard players remove @s LoreLines 1

#$say loring Rotation:[$(Rot0),$(Rot1)]

# Summon text display
$summon minecraft:text_display ~ ~ ~ {billboard:"fixed",alignment:"left",Tags:["ItemDetails","NewTextDisplay","MergeRotation"],text:{text:""},Rotation:[$(Rot0),$(Rot1)],background:2017213500,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Give matching scoreboard value
scoreboard players operation @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] IDID = @s IDID

# Merge text based on how many lore lines there are
execute if score @s LoreLines matches -1 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:custom_name"
execute if score @s LoreLines matches 0 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[0]
execute if score @s LoreLines matches 1 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[1]
execute if score @s LoreLines matches 2 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[2]
execute if score @s LoreLines matches 3 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[3]
execute if score @s LoreLines matches 4 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[4]
execute if score @s LoreLines matches 5 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[5]
execute if score @s LoreLines matches 6 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[6]
execute if score @s LoreLines matches 7 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[7]
execute if score @s LoreLines matches 8 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[8]
execute if score @s LoreLines matches 9 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[9]
execute if score @s LoreLines matches 10 run data modify entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] text set from entity @s item.components."minecraft:lore"[10]

scoreboard players set #skip Temp 0

# Skip if empty
execute if data entity @e[type=minecraft:text_display,tag=NewTextDisplay,limit=1] {text:""} run scoreboard players set #skip Temp 1

execute if score #skip Temp matches 1 run kill @e[type=minecraft:text_display,tag=NewTextDisplay]

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay

# Continue loop if lore remains
#   If skip, don't move upwards
#$execute if score @s LoreLines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.275 ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
$execute if score @s LoreLines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.20625 ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
#$execute if score @s LoreLines matches 0.. if score #skip Temp matches 0 positioned ^ ^0.1375 ^ run function exigence:menu/item_display/private/display_loop { {Rot0:$(Rot0),Rot1:$(Rot1)}
$execute if score @s LoreLines matches 0.. if score #skip Temp matches 1 positioned ^ ^ ^ run function exigence:menu/item_display/private/display_loop {Rot0:$(Rot0),Rot1:$(Rot1)}
