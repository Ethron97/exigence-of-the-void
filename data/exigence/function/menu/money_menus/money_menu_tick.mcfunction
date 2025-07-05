# Called by menu/menu_tick

## CONSTRAINTS:
# 

#=============================================================================================================

# Update whether player is holding currency or not
execute as @a[tag=ItemShopping] run function exigence:menu/money_menus/update_holding_state

# If holding currency: Add displays that aren't already displaying
execute at @a[tag=ItemShopping,scores={HoldingCurrency=1}] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=!DisplayingCost,tag=!Hover] run function exigence:menu/money_menus/handle_cost_display

# Delete if a displayer (holding currency) ever gets further than 8 blocks away
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=DisplayingCost,tag=!Hover] at @s unless entity @a[tag=ItemShopping,distance=..8,scores={HoldingCurrency=1}] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"


# Particles behind them if you can buy them or research
execute at @a[tag=ItemShopping] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch] at @s run particle dust{color:[0.95f,0.22f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShopping] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch] at @s run particle dragon_breath ^ ^ ^-0.3 0.1 0.1 0.1 0 1
execute at @a[tag=ItemShopping] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy] at @s run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShopping] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy] at @s run particle warped_spore ^ ^ ^-0.3 0.1 0.1 0.1 0 1

# Reduce shop purchase cooldown by 1
scoreboard players remove @e[type=minecraft:item_display,tag=ItemShopDisplay,scores={ShopPurchaseCooldown=1..}] ShopPurchaseCooldown 1
