# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load bag menu

# Load display pieces
$execute positioned ^0.0 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_dust_of_appearance',rarity:2,tier:3,money_cost:1,research_cost:5,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.6 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_cookie',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['item_dust_of_appearance','food_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.3 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_wind_charge',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['item_cookie'],Rotation:'$(Rotation)'}
$execute positioned ^-0.7 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_dust_heighten',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['item_cookie'],Rotation:'$(Rotation)'}
$execute positioned ^-1.1 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_chorus_fruit',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['item_dust_heighten','food_e'],Rotation:'$(Rotation)'}
$execute positioned ^-0.1 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_magma_cream',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['item_dust_heighten'],Rotation:'$(Rotation)'}
$execute positioned ^1.0 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_web_ball',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['item_wind_charge'],Rotation:'$(Rotation)'}
$execute positioned ^0.0 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_resonance_crystal',rarity:4,tier:7,money_cost:1,research_cost:40,parents:['item_magma_cream'],Rotation:'$(Rotation)'}
$execute positioned ^-1.4 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_phantom_membrane',rarity:4,tier:7,money_cost:1,research_cost:40,parents:['item_chorus_fruit'],Rotation:'$(Rotation)'}
$execute positioned ^-0.7 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_glow_ink_sac',rarity:4,tier:7,money_cost:1,research_cost:40,parents:['item_chorus_fruit'],Rotation:'$(Rotation)'}
$execute positioned ^0.6 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'item_wind_line',rarity:4,tier:7,money_cost:1,research_cost:40,parents:['item_web_ball'],Rotation:'$(Rotation)'}

# Add MenuConsumable
tag @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] add MenuConsumable
# Order important to exclude one time upgrade from FILL POTS

# Permanent upgrade
$execute positioned ^-0.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBag',item_name:'one_time_bag_a',rarity:4,tier:8,money_cost:16,research_cost:64,parents:['item_resonance_crystal','item_glow_ink_sac','item_wind_line','item_phantom_membrane'],Rotation:'$(Rotation)'}

# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents

