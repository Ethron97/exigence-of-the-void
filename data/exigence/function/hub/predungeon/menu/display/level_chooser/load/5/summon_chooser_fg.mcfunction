# Summon smiddle ground component of 3d level chooser

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:3\
,Tags:["LevelChooserDisplayFG","MenuDisplay","NewItemDisplay","PredungeonDisplay","Level5","PredungeonMenuDisplay","B"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},CustomName:{text:"ItemDisplay | LevelChooserFG | 5"}\
,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":{strings:["unknown_level_foreground_bw"]}\
,"minecraft:custom_data":{\
function_right:'exigence:hub/predungeon/menu/display/level_chooser/calls/right_clicked'\
,function_left:'exigence:hub/predungeon/menu/display/level_chooser/calls/left_clicked'\
,function_hover:'exigence:hub/predungeon/menu/display/level_chooser/calls/hover'\
,function_unhover:'exigence:hub/predungeon/menu/display/level_chooser/calls/unhover'\
,scale:'0.7'\
,hover_scale:'0.7'\
},"minecraft:lore":[[{text:"???",color:"#c7c1c1"}],[{text:"",color:"#c7c1c1"}]]}}}

# Default to locked
team join Red @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay