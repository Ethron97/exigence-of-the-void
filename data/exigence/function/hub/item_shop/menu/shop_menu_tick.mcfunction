# Called by hub_tick

## CONSTRAINTS
#   AT center of item shop room ( -43.5 200.0 0.5 )

#====================================================================================================

# Handle tags
execute as @e[distance=..24,type=minecraft:item_display,tag=MenuDisplay,tag=ItemShopDisplay,tag=Hover] run function exigence:menu/menu_tick_tag_swap
execute positioned -27.5 200.0 0.5 as @n[distance=..5,type=minecraft:item_display,tag=MenuDisplay,tag=RefreshButton,tag=Hover] at @s run function exigence:menu/menu_tick_tag_swap


# Player functions
scoreboard players set #Total shop.player.money_to_spend 0
scoreboard players set #Total shop.player.research_to_spend 0
execute as @a[distance=..24,tag=ItemShop] at @s run function exigence:hub/item_shop/menu/shop_player_tick


# Refresh button hover logic
execute positioned -27.5 200.0 0.5 as @n[distance=..5,type=minecraft:item_display,tag=MenuDisplay,tag=RefreshButton] at @s run function exigence:hub/locker_room/menu/display_hover_logic
# Display tick
execute as @e[distance=..24,type=minecraft:item_display,tag=MenuDisplay,tag=ItemShopDisplay] at @s run function exigence:hub/item_shop/menu/display/shop_display_tick


# If either spend amounts changed for any player, update purchasability
execute if entity @a[distance=..24,tag=ItemShop,scores={shop.player.currency_amounts_changed=1}] run function exigence:hub/item_shop/update_all_purchasability_displays
