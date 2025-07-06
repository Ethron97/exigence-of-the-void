# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load food menu

# Load display pieces
$execute positioned ^0.5 ^0.6 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_a',rarity:1,tier:1,money_cost:1,research_cost:1,parents:[],Rotation:'$(Rotation)'}

$execute positioned ^1.0 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_b',rarity:1,tier:2,money_cost:1,research_cost:2,parents:['food_a'],Rotation:'$(Rotation)'}

$execute positioned ^1.1 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_c',rarity:2,tier:3,money_cost:1,research_cost:5,parents:['food_b'],Rotation:'$(Rotation)'}

$execute positioned ^1.0 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_d',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['food_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.3 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_beast',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['food_c'],Rotation:'$(Rotation)'}

$execute positioned ^0.8 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_e',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['food_d'],Rotation:'$(Rotation)'}
$execute positioned ^0.1 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_glow',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['food_beast'],Rotation:'$(Rotation)'}

$execute positioned ^0.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_f',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['food_e'],Rotation:'$(Rotation)'}
$execute positioned ^-0.2 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'food_honey',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['food_glow'],Rotation:'$(Rotation)'}

# Add MenuConsumable
tag @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] add MenuConsumable
# Order important to exclude one time upgrade from FILL POTS

# Permanent upgrade
$execute positioned ^0.1 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuFood',item_name:'one_time_food_a',rarity:4,tier:7,money_cost:16,research_cost:40,parents:['food_f','food_honey'],Rotation:'$(Rotation)'}

# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents

