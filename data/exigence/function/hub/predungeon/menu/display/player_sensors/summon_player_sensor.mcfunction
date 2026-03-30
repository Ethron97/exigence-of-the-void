# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

#say Summon player sensor

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["PlayerSensor","MenuDisplay","NewItemDisplay","PredungeonDisplay","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1.0f]},CustomName:{text:"ItemDisplay | PlayerSensor"}\
,interpolation_duration:3,Glowing:true\
,item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_model_data":{strings:["eye_base"]}\
,"minecraft:custom_data":{\
function_right:'exigence:hub/predungeon/menu/display/player_sensors/calls/right_clicked'\
,function_left:'exigence:hub/predungeon/menu/display/player_sensors/calls/left_clicked'\
,function_hover:'exigence:hub/predungeon/menu/display/player_sensors/calls/hover'\
,function_unhover:'exigence:hub/predungeon/menu/display/player_sensors/calls/unhover'\
,scale:'0.7'\
,hover_scale:'0.7'\
}}}}

# Join team for initial hover color
team join Yellow @n[distance=..0.1,type=item_display,tag=NewItemDisplay]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay