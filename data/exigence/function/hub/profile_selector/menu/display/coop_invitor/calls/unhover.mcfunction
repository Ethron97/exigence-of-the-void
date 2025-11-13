# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#=============================================================================================================

#say Unhover (coop invitor)

# Unscale entity
$data modify entity @s[tag=PlayerHeadDisplay] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.125f,0f],scale:[$(scale)f,$(scale)f,$(scale2)f]}
$data modify entity @s[tag=!PlayerHeadDisplay] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}
