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

# Undisplay costs
execute if score #holding_currency Temp matches 0 as @s[tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"

# Hide locked reason
execute as @s[tag=ItemShopDisplay,tag=DisplayingLockedReason] run function exigence:menu/item_display/item_shop_display/locked_reason/hide with entity @s item.components."minecraft:custom_data"
