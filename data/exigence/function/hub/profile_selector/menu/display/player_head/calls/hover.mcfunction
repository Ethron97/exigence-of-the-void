# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

#say Hover call

# Show player name
execute at @s positioned ^ ^0.18 ^0.1 run function exigence:hub/profile_selector/menu/display/player_head/calls/private/show_name

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.6

# Scale entity
$data modify entity @s[tag=PlayerHeadDisplay] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.125f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale2)f]}
