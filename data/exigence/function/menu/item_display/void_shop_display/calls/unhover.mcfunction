# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

# Remove item details
function exigence:menu/item_display/remove_item_details with entity @s item.components."minecraft:custom_data"

# Unscale entity
#$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}

# Undisplay costs
$execute unless entity @a[scores={dead=0,shop.player.void_shopping_id=$(VoidShopID),shop.player.holding_currency=1},tag=ActivePlayer] as @s[tag=VoidShopDisplay,tag=DisplayingCost] run function exigence:menu/item_display/void_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"
