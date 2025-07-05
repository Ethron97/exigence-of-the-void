# Refreshes high level purchasability

## CALLS
#   Called on initial shop load
#   Called when player researches something

## CONSTRAINTS
# 

#=============================================================================================================

# DEBUG
#say update purchasability a

# Load advancements
execute as @a[tag=ItemShopping,tag=!CoopShopping] run function exigence:hub/item_shop/load_advancements

# Sub-call as ItemShopDisplays
execute as @e[predicate=exigence:region/item_shop,type=minecraft:item_display,tag=ItemShopDisplay] run function exigence:hub/item_shop/private/update_purchasability_a_
