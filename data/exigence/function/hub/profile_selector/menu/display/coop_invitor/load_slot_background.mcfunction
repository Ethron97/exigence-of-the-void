# Load player head slot background

## CONSTRAINTS
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#====================================================================================================

#say Load slot background

# Summon item display
summon block_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["PlayerHeadSlot","NewBlockDisplay"],block_state:{Name:"minecraft:netherite_block"},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0.15f,-0.15f,0.15f],scale:[0.3f,0.3f,0.3f]}}

# Assign data
$data modify entity @n[type=block_display,tag=NewBlockDisplay,distance=..1] item.components."minecraft:custom_data".parent_idid set value '$(idid)'
$data modify entity @n[type=block_display,tag=NewBlockDisplay,distance=..1] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[type=block_display,tag=NewBlockDisplay,distance=..1] item.components."minecraft:custom_data".slot_id set value '$(slot_id)'
$data modify entity @n[type=block_display,tag=NewBlockDisplay,distance=..1] item.components."minecraft:custom_data".profile_id set value '$(profile_id)'
$data modify entity @n[type=block_display,tag=NewBlockDisplay,distance=..1] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'

# Copy profile selector id
$scoreboard players set @n[type=block_display,tag=NewBlockDisplay,distance=..1] hub.entity.profile_selector_id $(profile_selector_id)

execute as @n[type=block_display,tag=NewBlockDisplay,distance=..1] at @s run tp ~ ~ ~0.98

# Local tag to be removed by function that implements this
tag @n[type=block_display,tag=NewBlockDisplay,distance=..3] remove NewBlockDisplay