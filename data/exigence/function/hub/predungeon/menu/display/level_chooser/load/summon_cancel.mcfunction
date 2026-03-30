# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~-0.0093 ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3\
,Tags:["Cancel","MenuDisplay","NewItemDisplay","PredungeonDisplay","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[-0.015625f,0f,0f],scale:[0.3f,0.3f,1.0f]},CustomName:{text:"ItemDisplay | Cancel"}\
,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":{strings:["red_x"]}\
,"minecraft:custom_data":{\
function_right:'exigence:hub/predungeon/menu/display/level_chooser/calls/right_clicked'\
,function_left:'exigence:hub/predungeon/menu/display/level_chooser/calls/left_clicked'\
,function_hover:'exigence:hub/predungeon/menu/display/level_chooser/calls/hover'\
,function_unhover:'exigence:hub/predungeon/menu/display/level_chooser/calls/unhover'\
,scale:'0.4'\
,hover_scale:'0.4'\
},"minecraft:lore":[[{text:"✖ Cancel ✖",color:red}]]}}}

team join Red @n[distance=..0.1,type=item_display,tag=NewItemDisplay]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay