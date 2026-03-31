# Load slot selector display

## CONSTRAINTS
#   AS deck analyzer
#   AT location

## INPUT:
#   ARRAY[] Rotation

#====================================================================================================

say Load refresh button

# Summon item display
$summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),CustomName:{text:"ItemDisplay | RefreshButton"},billboard:"fixed",Tags:["RefreshButton","MenuDisplay","NewItemDisplay","DeckAnalyzerDisplay","SizeClassMedium"],item:{id:"minecraft:sunflower",count:1\
,components:{"minecraft:custom_model_data":{strings:["refresh_green"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Assign data
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..1] hub.entity.profile_id = @s hub.entity.profile_id
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..1] hub.entity.coop_profile_id = @s hub.entity.coop_profile_id
execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get @s hub.entity.profile_id
execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get @s hub.entity.coop_profile_id
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".scale set value '1.0'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".hover_scale set value '1.0'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Refresh",color:"white"}
team join Green @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Give right and left click functions
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_right set value 'exigence:hub/deck_analyzer/refresh_button/calls/right_clicked'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_left set value 'exigence:hub/deck_analyzer/refresh_button/calls/left_clicked'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_hover set value 'exigence:hub/deck_analyzer/refresh_button/calls/hover'
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/deck_analyzer/refresh_button/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
