# Delete and recreate menus

# Unload menus
function exigence:menu/unload_menu {menu_tag:'MenuFood'}
function exigence:menu/unload_menu {menu_tag:'MenuBag'}
function exigence:menu/unload_menu {menu_tag:'MenuPotion'}
function exigence:menu/unload_menu {menu_tag:'MenuBoots'}
function exigence:menu/unload_menu {menu_tag:'MenuLeggings'}
function exigence:menu/unload_menu {menu_tag:'MenuChest'}
function exigence:menu/unload_menu {menu_tag:'MenuHelmet'}
function exigence:menu/unload_menu {menu_tag:'MenuArtifact'}

# Load advancements
execute as @a[tag=ItemShopping] run function exigence:hub/item_shop/load_advancements

# Calculate how much moneys and research the player has to spend
execute as @a[tag=ItemShopping] store result score @s shop.player.money_to_spend run clear @s diamond 0
execute as @a[tag=ItemShopping] store result score @s shop.player.research_to_spend run clear @s minecraft:prize_pottery_sherd 0
scoreboard players set @a[tag=ItemShopping,gamemode=creative] shop.player.money_to_spend 999
scoreboard players set @a[tag=ItemShopping,gamemode=creative] shop.player.research_to_spend 999

# Note, recreated displays start as "Loaded"
execute positioned -237.5 16.00 -51.5 run function exigence:menu/load_menu {Rotation:[-45.0f,0.0f],menu_path:'money_menus/food/load'}
execute positioned -235.75 16.00 -53.25 run function exigence:menu/load_menu {Rotation:[-45.0f,0.0f],menu_path:'money_menus/bag/load'}
execute positioned -228.5 16.00 -56.5 run function exigence:menu/load_menu {Rotation:[0.0f,0.0f],menu_path:'money_menus/potion/load'}
execute positioned -220.5 16.00 -52.5 run function exigence:menu/load_menu {Rotation:[45.0f,0.0f],menu_path:'money_menus/boot/load'}
execute positioned -216.5 16.00 -44.5 run function exigence:menu/load_menu {Rotation:[90.0f,0.0f],menu_path:'money_menus/legging/load'}
execute positioned -220.5 16.00 -36.5 run function exigence:menu/load_menu {Rotation:[135.0f,0.0f],menu_path:'money_menus/chestplate_2/load'}
execute positioned -228.5 16.00 -32.5 run function exigence:menu/load_menu {Rotation:[180.0f,0.0f],menu_path:'money_menus/helmet/load'}
execute positioned -236.5 16.00 -36.5 run function exigence:menu/load_menu {Rotation:[-135.0f,0.0f],menu_path:'money_menus/artifact/load'}

# Update initial purchasability
schedule function exigence:hub/item_shop/update_purchasability_full 1t
