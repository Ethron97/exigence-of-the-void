# Load slot selector display

## CONSTRAINTS
#   AS deck analyzer
#   AT location

## INPUT:
#   ARRAY[] Rotation

#=============================================================================================================

say Load refresh button

# Summon item display
$summon item_display ~ ~ ~ {Rotation:$(Rotation),billboard:"fixed",Tags:["RefreshButton","MenuDisplay","NewItemDisplay","DeckAnalyzerDisplay","SizeClassMedium"],item:{id:"minecraft:sunflower",count:1\
,components:{"minecraft:custom_model_data":{strings:["refresh"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Assign data
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get @s hub.entity.profile_id
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scale set value '1.0'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".hover_scale set value '1.0'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Refresh",color:"green"}
team join Green @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Give right and left click functions
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_right set value 'exigence:hub/deck_analyzer/refresh_button/calls/right_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_left set value 'exigence:hub/deck_analyzer/refresh_button/calls/left_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_hover set value 'exigence:hub/deck_analyzer/refresh_button/calls/hover'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/deck_analyzer/refresh_button/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
