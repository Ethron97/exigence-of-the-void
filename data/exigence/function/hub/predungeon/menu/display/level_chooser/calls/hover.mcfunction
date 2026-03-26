# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#====================================================================================================

#say Hover call

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.2
#execute at @s run playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 1.5

# Display item details
#execute at @s positioned ^ ^0.3 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_name
#execute at @s positioned ^ ^-0.4 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_line {line:0}
#execute at @s[tag=!Selected] positioned ^ ^-0.48 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_line {line:1}
