# Load slot selector display

## CONSTRAINTS
#   AS deck analyzer
#   AT location

## INPUT:
#   ARRAY[] Rotation

#====================================================================================================

#say (D3) Load refresh button

# Summon item display
$summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),CustomName:{text:"ItemDisplay | RefreshButton"},billboard:"fixed",Tags:["RefreshButton","MenuDisplay","NewItemDisplay","DeckAnalyzerDisplay","SizeClassMedium"],item:{id:"minecraft:sunflower",count:1\
,components:{"minecraft:custom_model_data":{strings:["refresh_green"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Assign data
scoreboard players operation #input hub.entity.profile_id = @s hub.entity.profile_id
scoreboard players operation #input hub.entity.coop_profile_id = @s hub.entity.coop_profile_id
execute as @n[type=item_display,tag=NewItemDisplay,distance=..1] run function exigence:hub/deck_analyzer/refresh_button/load_refresh_button_data

# Local tag to be removed by function that implements this
