# Update shop display information

## CONSTRAINTS
#   AS/AT item (shop) display

#====================================================================================================

# Hover logic
function exigence:hub/item_shop/menu/display/hover_logic

# Delete cost display if no shopper within 8 blocks
execute as @s[tag=!Hover] unless entity @a[distance=..8,tag=ItemShop,scores={shop.player.holding_currency=1}] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"

# If no player is within ..8, early return
execute unless entity @a[distance=..8,tag=ItemShop] run return 0
#----------------------------------------------------------------------------------------------------

# If holding currency: Add displays that aren't already displaying
execute as @s[tag=!DisplayingCost,tag=!Hover] if entity @a[distance=..8,tag=ItemShop,scores={shop.player.holding_currency=1}] run function exigence:menu/money_menus/handle_cost_display

# Particles behind them if you can buy them or research
execute as @s[tag=CanResearch] run particle dust{color:[0.95f,0.22f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
execute as @s[tag=CanBuy,tag=!IsOneTimePurchased] run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5

# Reduce shop purchase cooldown by 1
scoreboard players remove @s[scores={shop.frame.purchase_cooldown=1..}] shop.frame.purchase_cooldown 1

# OLD
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch] at @s run particle dust{color:[0.95f,0.22f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanResearch] at @s run particle dragon_breath ^ ^ ^-0.3 0.1 0.1 0.1 0 1
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy,tag=!IsOneTimePurchased] at @s run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5
#execute at @a[tag=ItemShop] as @e[distance=..8,type=minecraft:item_display,tag=ItemShopDisplay,tag=CanBuy] at @s run particle warped_spore ^ ^ ^-0.3 0.1 0.1 0.1 0 1
