# Loads all shop menus, called when player enters the shop

## CONSTRAINTS
# 

#=============================================================================================================

# DEBUG
#say Load item shop

# Update purchasability
function exigence:hub/item_shop/update_purchasability_full

# Load menus
scoreboard players set i Temp 1
schedule function exigence:hub/item_shop/load_handler/iterate 10t

# Load chests
function exigence:hub/item_shop/private/load_chests

# Reset shop purchase cooldown
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay] run scoreboard players set @s ShopPurchaseCooldown 0
