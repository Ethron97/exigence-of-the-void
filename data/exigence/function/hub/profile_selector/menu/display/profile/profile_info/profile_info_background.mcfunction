# Load sticker background

## CONSTRAINTS
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

#say Load profile display background

# Summon item display
summon block_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["NewBlockDisplay","ProfileInfoBackground","ProfileDetails","NewDisplay"],block_state:{Name:"minecraft:stripped_birch_wood"},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.025f],scale:[0.9f,1.0f,0.05f]}}

# Assign data
$data modify entity @n[distance=..1,type=block_display,tag=NewBlockDisplay] data.custom_data.parent_idid set value '$(idid)'
$data modify entity @n[distance=..1,type=block_display,tag=NewBlockDisplay] data.custom_data.player_id set value '$(player_id)'
$data modify entity @n[distance=..1,type=block_display,tag=NewBlockDisplay] data.custom_data.slot_id set value '$(slot_id)'
$data modify entity @n[distance=..1,type=block_display,tag=NewBlockDisplay] data.custom_data.profile_id set value '$(profile_id)'
$data modify entity @n[distance=..1,type=block_display,tag=NewBlockDisplay] data.custom_data.profile_selector_id set value '$(profile_selector_id)'

# Copy profile selector id
$scoreboard players set @n[distance=..1,type=block_display,tag=NewBlockDisplay] hub.entity.profile_selector_id $(profile_selector_id)

# Local tag to be removed by function that implements this
tag @n[distance=..1,type=block_display,tag=NewBlockDisplay] remove NewBlockDisplay