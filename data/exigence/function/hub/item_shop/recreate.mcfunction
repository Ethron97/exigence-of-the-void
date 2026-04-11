# Delete and recreate menus

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================
execute unless dimension exigence:hub run return run say (C) Failed to recreate: Not in hub
#----------------------------------------------------------------------------------------------------

#say (D3) Recreate item shop menus

# Unload menus
function exigence:menu/money_menus/food/unload
function exigence:menu/money_menus/bag/unload
function exigence:menu/money_menus/potion/unload
function exigence:menu/money_menus/boot/unload
function exigence:menu/money_menus/legging/unload
function exigence:menu/money_menus/chestplate_2/unload
function exigence:menu/money_menus/helmet/unload
function exigence:menu/money_menus/artifact/unload

# Note, recreated displays start as "Loaded"
execute positioned ~8.9 ~-0.6 ~7.1 run function exigence:menu/load_menu {Rotation:[135.0f,0.0f],menu_path:'money_menus/food/load'}
execute positioned ~7.1 ~-0.6 ~8.9 run function exigence:menu/load_menu {Rotation:[135.0f,0.0f],menu_path:'money_menus/bag/load'}
execute positioned ~ ~-0.6 ~11.5 run function exigence:menu/load_menu {Rotation:[180.0f,0.0f],menu_path:'money_menus/potion/load'}
execute positioned ~-8 ~-0.6 ~8 run function exigence:menu/load_menu {Rotation:[-135.0f,0.0f],menu_path:'money_menus/boot/load'}
execute positioned ~-11.5 ~-0.6 ~ run function exigence:menu/load_menu {Rotation:[-90.0f,0.0f],menu_path:'money_menus/legging/load'}
execute positioned ~-8 ~-0.6 ~-8 run function exigence:menu/load_menu {Rotation:[-45.0f,0.0f],menu_path:'money_menus/chestplate_2/load'}
execute positioned ~ ~-0.6 ~-11.5 run function exigence:menu/load_menu {Rotation:[0.0f,0.0f],menu_path:'money_menus/helmet/load'}
execute positioned ~8 ~-0.6 ~-8 run function exigence:menu/load_menu {Rotation:[45.0f,0.0f],menu_path:'money_menus/artifact/load'}

# So unload them
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=Loaded,distance=..32] run function exigence:menu/item_display/item_shop_display/load/unload
