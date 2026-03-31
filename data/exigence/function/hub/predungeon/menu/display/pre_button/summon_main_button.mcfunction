# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS predungeon menu node
#   AT location

## INPUT
#   SCORE #compare profile.player.profile_difficulty

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["PreButtonDisplay","MenuDisplay","NewItemDisplay","PredungeonDisplay","PredungeonMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1.0f]},CustomName:{text:"ItemDisplay | PreButton"}\
,interpolation_duration:3,item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_data":{\
function_right:'exigence:hub/predungeon/menu/display/pre_button/calls/right_clicked'\
,function_left:'exigence:hub/predungeon/menu/display/pre_button/calls/left_clicked'\
,function_hover:'exigence:hub/predungeon/menu/display/pre_button/calls/hover'\
,function_unhover:'exigence:hub/predungeon/menu/display/pre_button/calls/unhover'\
,scale:'0.7'\
,hover_scale:'0.7'\
},"minecraft:lore":[[{text:"Validate Profile",color:"#c7c1c1"}]]}}}

# Assign difficulty texture
execute if score #compare profile.player.profile_difficulty matches 1 run data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_radiant"]
execute if score #compare profile.player.profile_difficulty matches 2 run data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_ancient"]
execute if score #compare profile.player.profile_difficulty matches 3 run data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_ascendant"]
# TODO exigence

# Join team for hover color
team join Green @n[type=item_display,tag=NewItemDisplay,distance=..0.1]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..0.1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay