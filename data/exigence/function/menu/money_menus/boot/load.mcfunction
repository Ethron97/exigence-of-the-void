# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load boot menu

# Load display pieces
$execute positioned ^1.0 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_snow',rarity:1,tier:2,money_cost:4,research_cost:2,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1.0 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_depth_a',rarity:1,tier:2,money_cost:4,research_cost:2,parents:[],Rotation:'$(Rotation)'}

# LOOT BOOTS
$execute positioned ^-1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['boots_depth_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['boots_loot_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['boots_loot_b'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_d',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['boots_loot_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_e',rarity:4,tier:7,money_cost:14,research_cost:40,parents:['boots_loot_d'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_loot_f',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['boots_loot_e'],Rotation:'$(Rotation)'}

# PANIC BOOTS
$execute positioned ^-0.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['boots_depth_a'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['boots_panic_a'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['boots_panic_b'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_d',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['boots_panic_c'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_e',rarity:4,tier:7,money_cost:14,research_cost:40,parents:['boots_panic_d'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_panic_f',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['boots_panic_e'],Rotation:'$(Rotation)'}

# FEATHER BOOTS
$execute positioned ^0.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_a',rarity:2,tier:2,money_cost:5,research_cost:5,parents:['boots_snow'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_b',rarity:2,tier:3,money_cost:7,research_cost:10,parents:['boots_feather_a'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_c',rarity:3,tier:4,money_cost:9,research_cost:16,parents:['boots_feather_b'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_d',rarity:3,tier:5,money_cost:11,research_cost:24,parents:['boots_feather_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_e',rarity:4,tier:6,money_cost:14,research_cost:40,parents:['boots_feather_d'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_feather_f',rarity:4,tier:7,money_cost:20,research_cost:64,parents:['boots_feather_e'],Rotation:'$(Rotation)'}

# SCULK BOOTS
$execute positioned ^1.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_sculk_a',rarity:3,tier:5,money_cost:11,research_cost:24,parents:['boots_feather_c'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_sculk_b',rarity:3,tier:6,money_cost:13,research_cost:40,parents:['boots_sculk_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuBoots',item_name:'boots_sculk_c',rarity:4,tier:7,money_cost:20,research_cost:64,parents:['boots_sculk_b'],Rotation:'$(Rotation)'}

# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents
