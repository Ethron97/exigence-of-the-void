# Called by hub_tick

## CONSTRAINTS
#   AT center of ember shop ( 45.5 209.0 0.5 )

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 5.. run say (D5) Ember shop menu tick

# Swap Hover/OldHover tags
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover,distance=..16] run function exigence:menu/menu_tick_tag_swap

# Handle player functions
execute as @a[tag=EmberShop,distance=..16] at @s run function exigence:hub/ember_shop/menu/ember_shop_player_tick

# Hover logic
execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..16] run function exigence:hub/ember_shop/menu/display_hover_logic
