# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load potion menu

# Load display pieces
# Health potions
$execute positioned ^ ^0.6 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_a',rarity:1,tier:1,money_cost:1,research_cost:1,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^0.25 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_b',rarity:1,tier:2,money_cost:1,research_cost:2,parents:['potion_health_a'],Rotation:'$(Rotation)'}
$execute positioned ^0.4 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_c',rarity:2,tier:3,money_cost:1,research_cost:5,parents:['potion_health_b'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_d',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['potion_health_c'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_e',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_health_d'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_f',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_health_e'],Rotation:'$(Rotation)'}
$execute positioned ^0.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_health_g',rarity:3,tier:7,money_cost:1,research_cost:40,parents:['potion_health_f'],Rotation:'$(Rotation)'}


# Speed potions
$execute positioned ^-0.5 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_a',rarity:1,tier:2,money_cost:1,research_cost:2,parents:['potion_health_a'],Rotation:'$(Rotation)'}
$execute positioned ^-0.8 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_b',rarity:2,tier:3,money_cost:1,research_cost:5,parents:['potion_speed_1_a'],Rotation:'$(Rotation)'}
$execute positioned ^-1.1 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_c',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['potion_speed_1_b'],Rotation:'$(Rotation)'}
$execute positioned ^-1.25 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_d',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_speed_1_c'],Rotation:'$(Rotation)'}
$execute positioned ^-1.3 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_e',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_speed_1_d'],Rotation:'$(Rotation)'}
$execute positioned ^-1.3 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_1_f',rarity:3,tier:7,money_cost:1,research_cost:40,parents:['potion_speed_1_e'],Rotation:'$(Rotation)'}


$execute positioned ^-2 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_2',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_speed_1_c'],Rotation:'$(Rotation)'}
$execute positioned ^-2.2 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_3',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_speed_2'],Rotation:'$(Rotation)'}
$execute positioned ^-2.2 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_speed_4',rarity:3,tier:7,money_cost:1,research_cost:40,parents:['potion_speed_3'],Rotation:'$(Rotation)'}

# Jump potions
$execute positioned ^1.3 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_2_a',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['potion_health_c'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_2_b',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_jump_2_a'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_2_c',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_jump_2_b'],Rotation:'$(Rotation)'}
$execute positioned ^1.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_2_d',rarity:3,tier:7,money_cost:1,research_cost:40,parents:['potion_jump_2_c'],Rotation:'$(Rotation)'}

$execute positioned ^2.1 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_4',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_jump_2_a'],Rotation:'$(Rotation)'}
$execute positioned ^2.25 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_6',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_jump_4'],Rotation:'$(Rotation)'}
$execute positioned ^2.25 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_jump_8',rarity:3,tier:7,money_cost:1,research_cost:40,parents:['potion_jump_6'],Rotation:'$(Rotation)'}



# Glow potion
$execute positioned ^1.75 ^1.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_glow_a',rarity:1,tier:2,money_cost:1,research_cost:2,parents:['potion_health_a'],Rotation:'$(Rotation)'}
$execute positioned ^2 ^2 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_glow_b',rarity:2,tier:3,money_cost:1,research_cost:5,parents:['potion_glow_a'],Rotation:'$(Rotation)'}

# Slow potion
$execute positioned ^-0.4 ^2.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_slow_a',rarity:2,tier:4,money_cost:1,research_cost:10,parents:['potion_speed_1_b'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^3.5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_slow_b',rarity:3,tier:5,money_cost:1,research_cost:16,parents:['potion_slow_a'],Rotation:'$(Rotation)'}

# Invisibility
$execute positioned ^-0.2 ^4.25 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_invis_a',rarity:3,tier:6,money_cost:1,research_cost:24,parents:['potion_health_e'],Rotation:'$(Rotation)'}
$execute positioned ^-0.5 ^5 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'potion_invis_b',rarity:4,tier:7,money_cost:1,research_cost:40,parents:['potion_invis_a'],Rotation:'$(Rotation)'}


# Add MenuConsumable
tag @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] add MenuConsumable
# Order important to exclude one time upgrade from FILL POTS

# Permanent upgrade
$execute positioned ^ ^5.75 ^ run function exigence:menu/money_menus/money_item_display {menu_tag:'MenuPotion',item_name:'one_time_potion_a',rarity:4,tier:8,money_cost:24,research_cost:64,parents:['potion_jump_8','potion_health_g','potion_invis_b','potion_speed_4','potion_speed_1_f','potion_jump_2_d'],Rotation:'$(Rotation)'}


# Connect parents
execute as @e[type=minecraft:item_display,tag=NewItemDisplays,tag=ItemShopDisplay] run function exigence:menu/item_display/item_shop_display/connect_parents

