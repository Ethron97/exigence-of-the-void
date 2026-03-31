# Summon text display from item name

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   ARRAY[] Rotation

#====================================================================================================

# Summon text display
#,background:2017213500
$summon minecraft:text_display ~ ~ ~ {Rotation:$(Rotation),billboard:"fixed",alignment:"center",Tags:["RefreshButtonDisplay","NewTextDisplay","RefreshButtonDetails"],text:{text:""}\
,background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Give matching scoreboard/tag value
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] IDID = @s IDID
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] hub.entity.locker_room_id = @s hub.entity.locker_room_id
execute if entity @s[tag=ItemShopAnalyzerDisplay] run tag @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] add ItemShopAnalyzerDisplay

# Merge text based on how many lore lines there are
data modify entity @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] text set from entity @s item.components."minecraft:lore"[0]

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] remove NewTextDisplay
