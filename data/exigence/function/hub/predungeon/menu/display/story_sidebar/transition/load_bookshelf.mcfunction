# Load the ward health displays

## CONSTRAINTS
#   AS profile node
#   AT position

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load bookshelf progress

# Get number of books
#   OUTPUTS: #books Temp
execute at @s run function exigence:profile/profile_node/get/total_books

# BOOKSHELF
summon minecraft:block_display ~ ~ ~ {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["Bookshelf","PredungeonDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.11f,-0.11f,-0.05f],scale:[0.22f,0.22f,0.22f]},CustomName:{text:"ItemDisplay | Bookshelf"}\
,block_state:{Name:"minecraft:chiseled_bookshelf"}}

#====================================================================================================

# Set block state based on number of books
execute if score #books Temp matches 1.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_0_occupied set value "true"
execute if score #books Temp matches 9.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_1_occupied set value "true"
execute if score #books Temp matches 17.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_2_occupied set value "true"
execute if score #books Temp matches 25.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_3_occupied set value "true"
execute if score #books Temp matches 32.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_4_occupied set value "true"
execute if score #books Temp matches 40.. as @e[type=minecraft:block_display,tag=Bookshelf,distance=..1] run data modify entity @s block_state.Properties.slot_5_occupied set value "true"
