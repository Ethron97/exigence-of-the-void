# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

#say Hover call

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.6

# Scale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale)f]}

execute at @s positioned ^0.03 ^0.35 ^0 run function exigence:hub/deck_analyzer/refresh_button/calls/private/show_hover_name with entity @s
