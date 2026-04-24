# Load slot selector display

## CONSTRAINTS
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#====================================================================================================

#say (D3) Load invitor selector

# Summon item display
summon minecraft:item_display ~ ~ ~ {teleport_duration:3,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["CoopInvitorDisplay","MenuDisplay","NewItemDisplay","SizeClassMedium","ConfirmGroup"],item:{id:"minecraft:sunflower",count:1},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},CustomName:{text:"ItemDisplay | CoopInvitor"}}

# Assign data
$data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".parent_idid set value '$(idid)'
$data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".slot_id set value '$(slot_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".profile_id set value '$(profile_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".scale set value '0.3'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".hover_scale set value '0.3'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".Rotation set value '[0.0f,0.0f]'

# Give right and left click functions
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_right set value 'exigence:hub/profile_selector/menu/display/coop_invitor/calls/right_clicked'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_left set value 'exigence:hub/profile_selector/menu/display/coop_invitor/calls/left_clicked'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_hover set value 'exigence:hub/profile_selector/menu/display/coop_invitor/calls/hover'
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/profile_selector/menu/display/coop_invitor/calls/unhover'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] IDID = #highest IDID

# Copy profile selector id
$scoreboard players set @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] hub.entity.profile_selector_id $(profile_selector_id)

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Local tag to be removed by function that implements this
