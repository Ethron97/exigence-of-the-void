# Refreshes purchasability state of each item shop display

## CALLS
#   Called by item_shop_tick if player currency amounts have changed

## CONSTRAINTS
# 

#=============================================================================================================

# DEBUG
#say update void purchasability

# Reset tags
tag @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=CanAfford] remove CanAfford

execute as @e[type=minecraft:item_display,tag=VoidShopDisplay] run function exigence:menu/item_display/void_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
