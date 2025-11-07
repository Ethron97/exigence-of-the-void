# Load slot selector display

## CONSTRAINTS
#   AT location

## INPUT:
#   INT player_id
#   INT profile_selector_id
#   INT slot_id

#=============================================================================================================

# Summon item display
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~-0.45 {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["SlotDisplay","MenuDisplay","NewItemDisplay","NewItemDisplays","SizeClassA"],item:{id:"minecraft:ghast_tear",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}

# Assign data
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".slot_id set value '$(slot_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scale set value '0.8'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".hover_scale set value '0.8'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".Rotation set value '[0.0f,0.0f]'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".Rot0 set value '0'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".Rot1 set value '0'

# Give right and left click functions
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_right set value 'exigence:hub/profile_selector/menu/display/profile/calls/right_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_left set value 'exigence:hub/profile_selector/menu/display/profile/calls/left_clicked'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_hover set value 'exigence:hub/profile_selector/menu/display/profile/calls/hover'
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/profile_selector/menu/display/profile/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Copy profile selector id
$scoreboard players set @n[distance=..1,type=item_display,tag=NewItemDisplay] hub.entity.profile_selector_id $(profile_selector_id)

# Add ID to item data
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay