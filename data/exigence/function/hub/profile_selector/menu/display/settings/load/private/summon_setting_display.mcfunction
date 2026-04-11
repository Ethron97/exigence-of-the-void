# Load setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

#say (D3) Load setting selector

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
execute as @n[type=item_display,tag=NewItemDisplay,distance=..1] run function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display_data

# Local tag to be removed by function that implements this
