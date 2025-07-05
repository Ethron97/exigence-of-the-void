# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load chestplate menu

# Load display pieces
# GREEN
$execute positioned ^ ^0.6 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_green_a',rarity:1,tier:1,money_cost:3,research_cost:1,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_green_b',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['chest_green_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_green_c',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chest_green_b'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_green_d',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chest_green_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_green_e',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chest_green_d'],Rotation:'$(Rotation)'}

# RED
$execute positioned ^0.75 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_red_a',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['chest_green_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_red_b',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chest_red_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_red_c',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chest_red_b'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_red_d',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chest_red_c'],Rotation:'$(Rotation)'}

# AQUA
$execute positioned ^ ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chest_red_a','chest_green_b'],Rotation:'$(Rotation)'}
$execute positioned ^ ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chest_aqua_a'],Rotation:'$(Rotation)'}
$execute positioned ^ ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chest_aqua_b'],Rotation:'$(Rotation)'}

# TEAL
$execute positioned ^-0.75 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_teal_a',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chest_green_e','chest_aqua_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_teal_b',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chest_teal_a'],Rotation:'$(Rotation)'}

# PURPLE
$execute positioned ^0.75 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_purple_a',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chest_aqua_c','chest_red_d'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_purple_b',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chest_purple_a'],Rotation:'$(Rotation)'}


# WHITE
$execute positioned ^ ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_white_a',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chest_teal_a','chest_purple_a'],Rotation:'$(Rotation)'}
$execute positioned ^ ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_white_b',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chest_white_a'],Rotation:'$(Rotation)'}


# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents
