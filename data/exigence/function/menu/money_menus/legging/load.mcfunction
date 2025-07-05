# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load legging menu

# Load display pieces
# COINS
$execute positioned ^ ^0.6 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_a',rarity:1,tier:1,money_cost:3,research_cost:1,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_b',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['pants_coin_a'],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_c',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['pants_coin_b'],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_d',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['pants_coin_c'],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_e',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['pants_coin_d'],Rotation:'$(Rotation)'}
$execute positioned ^-0.75 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_coin_f',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['pants_coin_e'],Rotation:'$(Rotation)'}

# SHERDS
$execute positioned ^0.75 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_sherd_a',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['pants_coin_a'],Rotation:'$(Rotation)'}
$execute positioned ^0.75 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_sherd_b',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['pants_sherd_a'],Rotation:'$(Rotation)'}
$execute positioned ^0.75 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_sherd_c',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['pants_sherd_b'],Rotation:'$(Rotation)'}
$execute positioned ^0.75 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_sherd_d',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['pants_sherd_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.75 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_sherd_e',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['pants_sherd_d'],Rotation:'$(Rotation)'}

# POCKETS
#   OLD
#$execute positioned ^1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_pocket_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['pants_sherd_a'],Rotation:'$(Rotation)'}
#$execute positioned ^1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_pocket_b',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['pants_pocket_a'],Rotation:'$(Rotation)'}
#$execute positioned ^1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_pocket_c',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['pants_pocket_b'],Rotation:'$(Rotation)'}

#   NEW
$execute positioned ^1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_utility_a',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['pants_sherd_b'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_utility_b',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['pants_utility_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_utility_c',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['pants_utility_b'],Rotation:'$(Rotation)'}

# GLINT
$execute positioned ^-1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_glint_a',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['pants_coin_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_glint_b',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['pants_glint_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_glint_c',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['pants_glint_b'],Rotation:'$(Rotation)'}


# VAULT POCKETS
$execute positioned ^ ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_vault_a',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['pants_sherd_e','pants_coin_f'],Rotation:'$(Rotation)'}
#$execute positioned ^ ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuLeggings',item_name:'pants_vault_b',rarity:4,tier:8,money_cost:15,research_cost:64,parents:['pants_vault_a'],Rotation:'$(Rotation)'}

# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents
