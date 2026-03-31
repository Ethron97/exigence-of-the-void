# Load player status list background

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["CoopPlayerDisplay","NewItemDisplay"],item:{id:"minecraft:sunflower",count:1\
,components:{"minecraft:custom_model_data":{strings:["blank_scroll_2"]}}},CustomName:{text:"ItemDisplay | CoopListBackground"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.9f,0.9f,1.0f]}}

# Assign data
# Give matching scoreboard value
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] IDID = @s IDID
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] remove NewItemDisplay