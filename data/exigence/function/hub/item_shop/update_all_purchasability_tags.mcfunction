# Refreshes high level purchasability

## CALLS
#   Called on initial shop load

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================

# DEBUG
#say update purchasability a

# Load advancements
execute as @r[tag=ItemShop,distance=..24] run function exigence:hub/item_shop/load_unlocks

# Sub-call as ItemShopDisplays
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,distance=..24] run function exigence:hub/item_shop/private/update_purchasability_tags
