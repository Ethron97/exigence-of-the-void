# Call as loading card

## CONSTRAINTS
#   AS card display (item display)

#====================================================================================================


# Add functions
data modify entity @s item.components."minecraft:custom_data".function_right set value 'exigence:hub/ember_shop/menu/display/card/calls/right_clicked'
data modify entity @s item.components."minecraft:custom_data".function_left set value 'exigence:hub/ember_shop/menu/display/card/calls/left_clicked'
data modify entity @s item.components."minecraft:custom_data".function_hover set value 'exigence:hub/ember_shop/menu/display/card/calls/hover'
data modify entity @s item.components."minecraft:custom_data".function_unhover set value 'exigence:hub/ember_shop/menu/display/card/calls/unhover'
data modify entity @s item.components."minecraft:custom_data".scale set value '0.5'
data modify entity @s item.components."minecraft:custom_data".hover_scale set value '0.5'

# Join glow team
#team join 

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @s IDID = #highest IDID

# Add ID to item data
execute store result entity @s item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Assign display sequence
function exigence:hub/ember_shop/menu/library_display/calls/assign_display_sequence

# Remove local tag
tag @s remove NewItemDisplay