# Load slot selector display

## CONSTRAINTS
#   AT location

## INPUT:
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

#say Load setting selector

# Summon item display
summon item_display ~ ~ ~ {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["SettingDisplay","MenuDisplay","NewItemDisplay","SizeClassB"],\
item:{id:"minecraft:sunflower",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

# Assign data
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scale set value '0.5'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".hover_scale set value '0.5'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_hover_scale set value '0.7'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_shift set value '-0.04'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".Rotation set value '[90.0f,0.0f]'

# Give right and left click functions
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_right set value 'exigence:hub/profile_selector/menu/display/settings/calls/right_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_left set value 'exigence:hub/profile_selector/menu/display/settings/calls/left_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_hover set value 'exigence:hub/profile_selector/menu/display/settings/calls/hover'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/profile_selector/menu/display/settings/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Copy profile selector id
$scoreboard players set @n[distance=..1,type=item_display,tag=NewItemDisplay] hub.entity.profile_selector_id $(profile_selector_id)

# Add ID to item data
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
