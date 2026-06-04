# Update shop display information

## CONSTRAINTS
#   AS/AT item (shop) display

#====================================================================================================

# Hover logic
function exigence:game/other/void_shop/menu/display/hover_logic

# Delete cost display if no shopper within 8 blocks
execute as @s[tag=!Hover,tag=DisplayingCost] unless entity @a[scores={shop.player.holding_currency=1},distance=..8] run function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"

# If holding currency: Add displays that aren't already displaying
execute as @s[tag=!DisplayingCost,tag=!Hover] if entity @a[scores={shop.player.holding_currency=1},distance=..8] run function exigence:menu/money_menus/handle_cost_display

# Particles behind them if you can buy them or research
execute as @s[tag=CanAfford,tag=!IsOneTimePurchased] run particle dust{color:[0.2f,0.88f,1.0f],scale:0.3f} ^ ^ ^-0.3 0.1 0.1 0.1 0 5

# Reduce shop purchase cooldown by 1
scoreboard players remove @s[scores={shop.frame.purchase_cooldown=1..}] shop.frame.purchase_cooldown 1
