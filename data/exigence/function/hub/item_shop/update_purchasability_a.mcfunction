# Refreshes high level purchasability

## CALLS
#   Called on initial shop load
#   Called when player researches something

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================

# DEBUG
say update purchasability a

# Load advancements
execute as @r[distance=..24,tag=ItemShop] run function exigence:hub/item_shop/load_unlocks

# Sub-call as ItemShopDisplays
execute as @e[distance=..24,type=minecraft:item_display,tag=ItemShopDisplay] run function exigence:hub/item_shop/private/update_purchasability_a_
