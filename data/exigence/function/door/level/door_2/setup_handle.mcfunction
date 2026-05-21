# Setup door handle from level 2 to 3

## CONSTRAINTS
#   AS/AT DoorNode tag=DoorNode,tag=Door2
#   positioned

#====================================================================================================

# Summon new item display(s)

# Little skull above the key slot
summon minecraft:item_display ^ ^0.25 ^-0.171875 {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_skull_2"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

# Main front block of the lock
summon minecraft:item_display ^ ^ ^-0.0625 {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_a"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:item_display ^ ^ ^-0.125 {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_a"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Central key slot that turns with the key
summon minecraft:item_display ^ ^ ^ {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2","DoorHandle","NewDoorHandle","Door2Handle"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_b"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Back and rim covers
summon minecraft:item_display ^ ^ ^0.0625 {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_c"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

summon minecraft:item_display ^ ^ ^ {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2"],\
item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_model_data":{"strings":["door_lock_c"]}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

#====================================================================================================
# Call common function to summon the circles of runes around the lock
function exigence:door/level/common/summon_runes

# Setup new runes
execute as @e[type=minecraft:item_display,tag=NewRune,distance=..10] run function exigence:door/level/door_2/setup_handle_b

#====================================================================================================
# Summon enchanted barrier
summon minecraft:item_display ^ ^ ^0.1 {brightness:{block:15,sky:15},Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["Door","Door2","DoorShimmer","Door2Shimmer"],\
item:{id:"minecraft:light_blue_stained_glass_pane",count:1,components:{"minecraft:enchantments":{protection:1}}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.9f,4.9f,1.0f]}}

#====================================================================================================
# Summon new interaction
summon interaction ~ ~-2 ~ {Tags:["DoorHandle","NewDoorHandle","Door2Handle","ETICK"],response:1b,width:2,height:4}

# Remove local tag
tag @e[tag=NewDoorHandle,distance=..10] remove NewDoorHandle
