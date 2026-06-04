# Called by void merchant e tick, if loaded

## CONSTRAINTS
#   AS/AT void merchant

#====================================================================================================

# Handle tags
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover,distance=..6] run function exigence:menu/menu_tick_tag_swap


# Player functions
execute as @a[scores={dead=0},tag=ActivePlayer,distance=..6] at @s run function exigence:game/other/void_shop/menu/void_shop_player_tick


# Display tick
execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..6] at @s run function exigence:game/other/void_shop/menu/display/shop_display_tick


# If either spend amounts changed for any player, update purchasability
execute if entity @a[scores={dead=0,shop.player.currency_amounts_changed=1},tag=ActivePlayer,distance=..6] run function exigence:game/other/void_shop/update_all_purchasability_displays
