# Refreshes purchasability state of each item shop display

## CALLS
#   Called by void_shop_menu_tick if player currency amounts have changed

## CONSTRAINTS
#   AT void shop/merchant

#====================================================================================================

# DEBUG
execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) update purchasability b (void shop)

execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..8] at @s run function exigence:menu/item_display/void_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
