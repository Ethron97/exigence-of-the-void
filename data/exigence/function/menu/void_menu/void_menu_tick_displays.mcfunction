# Called by void_menu_tick if at least one void menu is loaded

#=============================================================================================

# Refresh currencies
execute as @a[tag=VoidShopping] run function exigence:hub/item_shop/private/refresh_currency_player
# If either spend amounts changed for any player, update purchasability
execute if entity @a[tag=VoidShopping,scores={CurrencyChanged=1}] run function exigence:menu/void_menu/update_purchasability


# Particles behind them if you can buy them or research
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=CanAfford] at @s run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5


# Update whether player is holding currency or not
execute as @a[tag=VoidShopping] run function exigence:menu/money_menus/update_holding_state

# If holding diamond, display costs if within 8 blocks
execute at @a[tag=VoidShopping,scores={HoldingCurrency=1}] as @e[distance=..8,type=minecraft:item_display,tag=VoidShopDisplay,tag=!DisplayingCost,tag=!Hover] run tag @s add CreateCostDisplay
execute as @e[type=minecraft:item_display,tag=CreateCostDisplay] run function exigence:menu/item_display/void_shop_display/cost_display/create with entity @s
execute as @e[type=minecraft:item_display,tag=CreateCostDisplay] run function exigence:menu/item_display/void_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
tag @e[type=minecraft:item_display,tag=CreateCostDisplay] remove CreateCostDisplay

# Delete if a displayer (holding currency) ever gets further than 8 blocks away
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,tag=DisplayingCost,tag=!Hover] at @s unless entity @a[tag=VoidShopping,distance=..8,scores={HoldingCurrency=1}] run function exigence:menu/item_display/void_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"
