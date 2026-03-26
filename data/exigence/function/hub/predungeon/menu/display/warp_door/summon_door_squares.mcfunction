# Summon warp door

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:10\
,Tags:["DoorPart","NewItemDisplay","PredungeonDisplay","DoorSquares"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.0f,4.0f,3.0f]},CustomName:{text:"ItemDisplay | DoorSquares"}\
,item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["door_squares"]}}}}

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay