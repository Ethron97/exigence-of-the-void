# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#=============================================================================================================

#say Unhover (player_head)

# Hide player name
execute at @s run function exigence:hub/profile_selector/menu/display/player_head/calls/private/remove_all_details with entity @s item.components."minecraft:custom_data"

# Unscale entity
$data modify entity @s[tag=PlayerHeadDisplay] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.125f,0f],scale:[$(scale)f,$(scale)f,$(scale2)f]}
