# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Show text

# Summon text display
#,background:2017213500
summon minecraft:text_display ~ ~ ~ {brightness:{block:11,sky:11},line_width:90,Rotation:[90,0],billboard:"fixed",alignment:"center",Tags:["SettingDetails","NewTextDisplay"]\
,text:{text:""},background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Merge text based on how many lore lines there are
execute if score @s Random matches 0 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".display0
execute if score @s Random matches 1 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".display1
execute if score @s Random matches 2 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".display2

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
