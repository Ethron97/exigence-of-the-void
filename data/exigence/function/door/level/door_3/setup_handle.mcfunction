# Setup door handle from level 2 to 3

## CONSTRAINTS
#   AS/AT DoorNode tag=DoorNode,tag=Door3
#   positioned

#============================================================================================================

# Summon new item display(s)

# Little skull above the key slot
summon item_display ^ ^0.25 ^-0.171875 {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_skull_3"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

# Main front block of the lock
summon item_display ^ ^ ^-0.0625 {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_a"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
summon item_display ^ ^ ^-0.125 {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_a"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Central key slot that turns with the key
summon item_display ^ ^ ^ {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3","DoorHandle","NewDoorHandle","Door3Handle"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_b"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Back and rim covers
summon item_display ^ ^ ^0.0625 {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_c"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

summon item_display ^ ^ ^ {brightness:{block:15,sky:15},Rotation:[180.0f,0.0f],billboard:"fixed",Tags:["Door","Door3"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_c"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}



# Call common function to summon the circles of runes around the lock
function exigence:door/level/common/summon_runes

# Setup new runes
execute as @e[type=item_display,tag=NewRune] run function exigence:door/level/door_3/setup_handle_b


# Summon new interaction
summon interaction ~ ~-2 ~ {Tags:["DoorHandle","NewDoorHandle","Door3Handle"],response:1b,width:2,height:4}



# Copy score from bolt node
scoreboard players operation @e[type=item_display,tag=NewDoorHandle] DoorHandleID = @s NodeID
scoreboard players operation @e[type=interaction,tag=NewDoorHandle] DoorHandleID = @s NodeID

# Remove local tag
tag @e[tag=NewDoorHandle] remove NewDoorHandle
