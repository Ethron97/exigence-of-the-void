# Refreshes purchasability state of each item shop display

## CALLS
#   Called by item_shop_tick if player currency amounts have changed

## CONSTRAINTS
# 

#=============================================================================================================

# DEBUG
#say update purchasability b

execute as @e[type=minecraft:item_display,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
