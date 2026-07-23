# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4 Menu) Hover call

team join Green @s

# Playsound
execute at @s run playsound minecraft:item.book.page_turn ui @a ~ ~ ~ 1 1.4

# Display item details
function exigence:hub/ember_shop/menu/display/card/calls/private/display_item_details
# Display cost
execute at @s run function exigence:hub/ember_shop/menu/display/card/calls/cost_display/create
function exigence:hub/ember_shop/menu/display/card/calls/update_purchasability with entity @s item.components."minecraft:custom_data"