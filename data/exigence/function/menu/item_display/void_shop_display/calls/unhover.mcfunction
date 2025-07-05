# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#=============================================================================================================

# Remove item details
function exigence:menu/item_display/remove_item_details with entity @s item.components."minecraft:custom_data"

# Unscale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}

# Remove local tag
#tag @e[type=interaction,tag=HoverScale] remove HoverScale

# Undisplay costs
$execute unless entity @a[tag=ActivePlayer,scores={dead=0,VoidShopping=$(VoidShopID),HoldingCurrency=1}] as @s[tag=VoidShopDisplay] run function exigence:menu/item_display/void_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"
