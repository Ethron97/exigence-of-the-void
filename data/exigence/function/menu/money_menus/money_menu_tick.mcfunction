# Called by menu/menu_tick

## CONSTRAINTS:
# 

#====================================================================================================
# DEPRECATED
say DEPRECATED (money_menu_tick)
#====================================================================================================

# Update whether player is holding currency or not
execute as @a[tag=ItemShop] run function exigence:menu/money_menus/update_holding_state

# If holding currency: Add displays that aren't already displaying
execute at @a[scores={shop.player.holding_currency=1},tag=ItemShop] as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=!DisplayingCost,tag=!Hover,distance=..8] run function exigence:menu/money_menus/handle_cost_display

# Delete if a displayer (holding currency) ever gets further than 8 blocks away
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=DisplayingCost,tag=!Hover,distance=..16] at @s unless entity @a[scores={shop.player.holding_currency=1},tag=ItemShop,distance=..8] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"


# Particles behind them if you can buy them or research
execute at @a[tag=ItemShop] as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch,distance=..8] at @s run particle dust{color:[0.95f,0.22f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch] at @s run particle dragon_breath ^ ^ ^-0.3 0.1 0.1 0.1 0 1
execute at @a[tag=ItemShop] as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy,tag=!IsOneTimePurchased,distance=..8] at @s run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy] at @s run particle warped_spore ^ ^ ^-0.3 0.1 0.1 0.1 0 1

# Reduce shop purchase cooldown by 1
scoreboard players remove @e[type=minecraft:item_display,scores={shop.frame.purchase_cooldown=1..},tag=ItemShopDisplay,distance=..16] shop.frame.purchase_cooldown 1
