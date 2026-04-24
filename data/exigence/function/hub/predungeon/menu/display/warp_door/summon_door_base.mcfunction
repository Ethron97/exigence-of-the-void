# Summon warp door frame

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:10\
,Tags:["FramePart","NewItemDisplay","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.0f,4.0f,4.5f]},CustomName:{text:"ItemDisplay | DoorBase"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["door_base"]}}}}

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay