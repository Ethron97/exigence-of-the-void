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

scoreboard players operation #input IDID = @s IDID
scoreboard players operation #input hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
scoreboard players operation #input hub.entity.locker_room_id = @s hub.entity.locker_room_id
execute store success score #input_a Temp if entity @s[tag=ItemShopAnalyzerDisplay]
execute store success score #input_b Temp if entity @s[tag=PredungeonAnalyzerDisplay]
# ^> INPUT:
execute as @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] run function exigence:hub/deck_analyzer/refresh_button/calls/private/show_hover_text_data
