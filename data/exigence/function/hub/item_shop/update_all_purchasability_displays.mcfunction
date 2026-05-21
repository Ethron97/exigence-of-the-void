# Refreshes purchasability state of each item shop display

## CALLS
#   Called by item_shop_tick if player currency amounts have changed

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================

# DEBUG
execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) update purchasability b

execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,distance=..24] at @s unless entity @s[tag=!IsTierUnlocked,tag=!IsParentResearched] run function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
