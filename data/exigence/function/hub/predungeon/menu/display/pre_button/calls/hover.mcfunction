# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#====================================================================================================

#say (D3) Hover call

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.2

# Display item details
execute at @s run function exigence:hub/predungeon/menu/display/pre_button/calls/hover/load_hover_details
