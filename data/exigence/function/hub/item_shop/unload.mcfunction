# Unload all shop menus, called when player leaves the shop

## CONSTRAINTS
# 

#=============================================================================================================

# DEBUG
#say Unload item shop

# Any menu item that is loaded, tp back up to be "unloaded"
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=Loaded] run function exigence:menu/item_display/item_shop_display/load/unload

# Save chests
function exigence:hub/item_shop/private/save_chests
