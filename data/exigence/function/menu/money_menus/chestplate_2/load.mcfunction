# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load chestplate_2 menu

# Load display pieces

# Resources
$execute positioned ^ ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_get_all',rarity:2,tier:1,money_cost:4,research_cost:2,parents:[],Rotation:'$(Rotation)'}

# Phantom Scales
$execute positioned ^-0.90 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chestplate_get_all'],Rotation:'$(Rotation)'}

# Regen Mantle
$execute positioned ^0.90 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chestplate_get_all'],Rotation:'$(Rotation)'}

# Resources cont
$execute positioned ^-0.75 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_get_green',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chestplate_invis_a'],Rotation:'$(Rotation)'}
$execute positioned ^0 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_get_aqua',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chestplate_invis_a','chestplate_regen_a'],Rotation:'$(Rotation)'}
$execute positioned ^0.75 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_get_red',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chestplate_regen_a'],Rotation:'$(Rotation)'}

# Phantom Scales cont
$execute positioned ^-1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chestplate_invis_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chestplate_invis_b','chestplate_get_green'],Rotation:'$(Rotation)'}
$execute positioned ^-1.4 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_d',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chestplate_invis_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.3 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_e',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chestplate_invis_d'],Rotation:'$(Rotation)'}
$execute positioned ^-1.25 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_f',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_invis_e'],Rotation:'$(Rotation)'}
$execute positioned ^-1.9 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_invis_g',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_invis_e'],Rotation:'$(Rotation)'}

# Regen Mantle cont
$execute positioned ^1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chestplate_regen_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chestplate_regen_b','chestplate_get_red'],Rotation:'$(Rotation)'}
$execute positioned ^1.4 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_d',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chestplate_regen_c'],Rotation:'$(Rotation)'}
$execute positioned ^1.3 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_e',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chestplate_regen_d'],Rotation:'$(Rotation)'}
$execute positioned ^1.25 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_f',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_regen_e'],Rotation:'$(Rotation)'}
$execute positioned ^1.9 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_regen_g',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_regen_e'],Rotation:'$(Rotation)'}

$execute positioned ^ ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_shield_a',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chestplate_get_green','chestplate_get_aqua','chestplate_get_red'],Rotation:'$(Rotation)'}
$execute positioned ^ ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_shield_b',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chestplate_shield_a'],Rotation:'$(Rotation)'}
$execute positioned ^ ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_shield_c',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chestplate_shield_b'],Rotation:'$(Rotation)'}
$execute positioned ^-0.4 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_shield_d',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_shield_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.4 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chestplate_shield_e',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chestplate_shield_c'],Rotation:'$(Rotation)'}



# saved this from old one just to have the cost and position references
#$execute positioned ^ ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['chest_red_a','chest_green_b'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['chest_aqua_a'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_aqua_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['chest_aqua_b'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_purple_a',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['chest_aqua_c','chest_red_d'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_white_a',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['chest_teal_a','chest_purple_a'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuChest',item_name:'chest_white_b',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['chest_white_a'],Rotation:'$(Rotation)'}


# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents
