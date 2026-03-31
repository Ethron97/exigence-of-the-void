# Load setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

#say Load setting selector

# Summon item display
summon minecraft:item_display ~ ~ ~ {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["SettingDisplay","MenuDisplay","NewItemDisplay","SizeClassB"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}\
,CustomName:{text:"ItemDisplay | SettingDisplay"},item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_data":{\
function_right:'exigence:hub/profile_selector/menu/display/settings/calls/right_clicked'\
,function_left:'exigence:hub/profile_selector/menu/display/settings/calls/left_clicked'\
,function_hover:'exigence:hub/profile_selector/menu/display/settings/calls/hover'\
,function_unhover:'exigence:hub/profile_selector/menu/display/settings/calls/unhover'\
,scale:'0.5'\
,hover_scale:'0.5'\
,preview_scale:'0.3'\
,preview_hover_scale:'0.7'\
,preview_shift:'-0.04'\
,Rotation:'[90.0f,0.0f]'\
}}}}

# Assign data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".player_id set from storage exigence:temp player_id
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".profile_selector_id set from storage exigence:temp profile_selector_id

# Give right and left click functions
# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..1] IDID = #highest IDID

# Copy profile selector id
execute store result score @n[type=item_display,tag=NewItemDisplay,distance=..1] hub.entity.profile_selector_id run data get storage exigence:temp profile_selector_id

# Add ID to item data
execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
