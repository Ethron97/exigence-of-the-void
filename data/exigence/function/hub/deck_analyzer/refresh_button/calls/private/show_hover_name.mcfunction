# Summon text display from item name

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   ARRAY[] Rotation

#=============================================================================================================

# Summon text display
#,background:2017213500
$summon minecraft:text_display ~ ~ ~ {Rotation:$(Rotation),billboard:"fixed",alignment:"center",Tags:["RefreshButtonDisplay","NewTextDisplay"],text:{text:""}\
,background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]}}

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Merge text based on how many lore lines there are
data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text set from entity @s item.components."minecraft:custom_name"

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
