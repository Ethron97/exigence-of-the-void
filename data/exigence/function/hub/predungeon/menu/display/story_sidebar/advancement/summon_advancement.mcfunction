# Summon warp door frame

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["AdvancementDisplay","NewItemDisplay","PredungeonDisplay","PredungeonMenuDisplay","MenuDisplay","SidebarDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,2.0f]},CustomName:{text:"ItemDisplay | AdvancementDisplay"}\
,item:{id:"minecraft:map",count:1,components:{"minecraft:custom_model_data":{strings:["win_difficulty_0"]}\
,"minecraft:custom_data":{\
function_right:'exigence:hub/predungeon/menu/display/story_sidebar/advancement/calls/right_clicked'\
,function_left:'exigence:hub/predungeon/menu/display/story_sidebar/advancement/calls/left_clicked'\
,function_hover:'exigence:hub/predungeon/menu/display/story_sidebar/advancement/calls/hover'\
,function_unhover:'exigence:hub/predungeon/menu/display/story_sidebar/advancement/calls/unhover'\
,scale:'0.5'\
,hover_scale:'0.5'\
},"minecraft:lore":[[{text:"???",color:"#c7c1c1"}],[{text:"",color:"#c7c1c1"}]]}}}

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID


# LOCAL TAG GET REMOVED BY NExT FUNCTION