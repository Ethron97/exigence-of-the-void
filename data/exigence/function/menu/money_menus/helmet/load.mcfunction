# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load helmet menu

# Load display pieces
# BERRY
$execute positioned ^ ^0.6 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_berry_a',rarity:1,tier:1,money_cost:3,research_cost:1,parents:[],Rotation:'$(Rotation)'}

# MIRROR
$execute positioned ^ ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_mirror_a',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['helmet_glimmer_a','helmet_beast_a'],Rotation:'$(Rotation)'}

# Detection
$execute positioned ^1 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_detection_a',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['helmet_beast_b'],Rotation:'$(Rotation)'}
$execute positioned ^1 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_detection_b',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['helmet_detection_a'],Rotation:'$(Rotation)'}
$execute positioned ^1 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_detection_c',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['helmet_detection_b'],Rotation:'$(Rotation)'}
$execute positioned ^1 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_detection_d',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['helmet_detection_c'],Rotation:'$(Rotation)'}
$execute positioned ^1 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_detection_e',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['helmet_detection_d'],Rotation:'$(Rotation)'}


# Glimmer
$execute positioned ^-1 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_a',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['helmet_berry_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_b',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['helmet_glimmer_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_c',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['helmet_glimmer_b'],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_d',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['helmet_glimmer_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_e',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['helmet_glimmer_d'],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_f',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['helmet_glimmer_e'],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_glimmer_g',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['helmet_glimmer_f'],Rotation:'$(Rotation)'}

# Flicker
$execute positioned ^-2 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_flicker_a',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['helmet_glimmer_c'],Rotation:'$(Rotation)'}
$execute positioned ^-2 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_flicker_b',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['helmet_flicker_a'],Rotation:'$(Rotation)'}
$execute positioned ^-2 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_flicker_c',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['helmet_flicker_b'],Rotation:'$(Rotation)'}
$execute positioned ^-2 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_flicker_d',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['helmet_flicker_c'],Rotation:'$(Rotation)'}

# Luminous
#$execute positioned ^-1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_luminous_a',rarity:3,tier:7,money_cost:13,research_cost:40,parents:['helmet_glimmer_e','helmet_flicker_b'],Rotation:'$(Rotation)'}
#$execute positioned ^-1.5 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_luminous_b',rarity:3,tier:8,money_cost:15,research_cost:64,parents:['helmet_luminous_a'],Rotation:'$(Rotation)'}

# Beast
$execute positioned ^1 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_a',rarity:1,tier:2,money_cost:4,research_cost:2,parents:['helmet_berry_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_b',rarity:2,tier:3,money_cost:5,research_cost:5,parents:['helmet_beast_a'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_c',rarity:2,tier:4,money_cost:7,research_cost:10,parents:['helmet_beast_b'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_d',rarity:3,tier:5,money_cost:9,research_cost:16,parents:['helmet_beast_c'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_e',rarity:3,tier:6,money_cost:11,research_cost:24,parents:['helmet_beast_d'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_f',rarity:4,tier:7,money_cost:13,research_cost:40,parents:['helmet_beast_e'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuHelmet',item_name:'helmet_beast_g',rarity:4,tier:8,money_cost:20,research_cost:64,parents:['helmet_beast_f'],Rotation:'$(Rotation)'}


# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents
