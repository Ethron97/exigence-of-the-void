# Summon item display to display a unique item for easy profile differentiation
#   Called by summon_stickers, when profile is loaded to a slot

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

#say Load identifier sticker

# Summon item display
$summon item_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["ProfileSticker","NewItemDisplay","ProfileTypeSticker"],item:{id:"$(identifier)",count:1\
},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.7f]}}

# Assign data
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".parent_idid set value '$(idid)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".slot_id set value '$(slot_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_id set value '$(profile_id)'
$data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[distance=..1,type=item_display,tag=NewItemDisplay] IDID = #highest IDID

# Copy profile selector id
$scoreboard players set @n[distance=..1,type=item_display,tag=NewItemDisplay] hub.entity.profile_selector_id $(profile_selector_id)

# Add ID to item data
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay