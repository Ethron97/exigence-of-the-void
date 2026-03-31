# Calls all purchsability refreshes
# Recalcs player items

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================
say DEPRECATED

#say Refresh pruchasability full

function exigence:hub/item_shop/refresh_currency
function exigence:hub/item_shop/update_all_purchasability_tags

execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,distance=..24] at @s run function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"

execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,distance=..24] at @s run function exigence:menu/item_display/item_shop_display/update_parent_line_colors with entity @s item.components."minecraft:custom_data"
