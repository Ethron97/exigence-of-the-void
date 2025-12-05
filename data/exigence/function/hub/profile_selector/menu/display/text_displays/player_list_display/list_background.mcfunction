# Load player status list background

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

# Summon item display
summon item_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["CoopPlayerDisplay","NewItemDisplay"],item:{id:"minecraft:sunflower",count:1\
,components:{"minecraft:custom_model_data":{strings:["blank_scroll_2"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.9f,0.9f,1.0f]}}

# Assign data
# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:item_display,tag=NewItemDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:item_display,tag=NewItemDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay