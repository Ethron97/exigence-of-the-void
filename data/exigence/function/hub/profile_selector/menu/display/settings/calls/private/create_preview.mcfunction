# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#$say Create preview $(preview_scale)

tag @s add HasPreview

# Summon text display
$summon minecraft:text_display ~ ~ ~ {brightness:{block:11,sky:11},Rotation:[90,0],billboard:"fixed",alignment:"right",Tags:["SettingPreview","NewTextDisplay"]\
,text:{text:""},background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[$(preview_scale),$(preview_scale),$(preview_scale)]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Merge text based on how many lore lines there are
execute if score @s Random matches 0 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".preview0
execute if score @s Random matches 1 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".preview1
execute if score @s Random matches 2 run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_data".preview2

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
