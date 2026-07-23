# Call when first rune in a frame pops
#   Ie, if we are double-time then don't convert both

## CONSTRAINTS
#   AS rune

#====================================================================================================

tag @s remove Rune
tag @s add Piece

# Prevent second rune from also converting
scoreboard players set #already_converted ember_shop 1

# Increment piece counter
scoreboard players add shop.piece_counter ember_shop 1
execute store result entity @s item.components."minecraft:custom_data".piece_counter int 1 run scoreboard players get shop.piece_counter ember_shop

# Reset teleport duration
data remove entity @s teleport_duration

# Assign new model data
function exigence:hub/ember_shop/menu/display/purchase_animation/ember/private/assign_piece_model with entity @s item.components."minecraft:custom_data"

# Set scale to slightly larger at first
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[2.0f,2.0f,1.0f]}

# Setup interpolation to fit perfectly
#data modify entity @s interpolation_duration set value 8
#data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.0f,1.0f,0.5f]}}

# Teleport into position
data modify entity @s billboard set value "fixed"
execute at @n[type=minecraft:item_display,tag=Purchasing,distance=..10] positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~
