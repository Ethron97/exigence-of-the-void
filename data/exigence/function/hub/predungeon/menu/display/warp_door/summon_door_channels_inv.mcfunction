# Summon warp door

## CONSTRAINTS
#   AT location

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[180.0f,0.0f],billboard:"fixed",interpolation_duration:10\
,Tags:["DoorPart","NewItemDisplay","PredungeonDisplay","DoorChannelsInv"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.0f,4.0f,1.0f]},CustomName:{text:"ItemDisplay | DoorChannels"}\
,item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["channel_outside_0"]}\
}}}

team join LightPurple @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1]

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay