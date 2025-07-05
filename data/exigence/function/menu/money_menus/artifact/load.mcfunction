# Called by load_menu parent function

## CONSTRAINTS
# AT MenuAnchor location

#=============================================================================================================

# DEBUG
say load artifact menu

# Load display pieces
# COMMON
#$execute positioned ^-1.66 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'piggy_bank',vault:'shaper',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1.66 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'leather_shield',vault:'shaper',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'prize_eye',vault:'raiser',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.33 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'harvest_scythe',vault:'host',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^0.33 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'water_crystal',vault:'tide',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^0.33 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'ashes',vault:'tide',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'charm_of_peril',vault:'rib',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^1.66 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'ice_box',vault:'wayfinder',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1.66 ^1.25 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'satchel',vault:'wayfinder',rarity:1,tier:2,money_cost:3,research_cost:9999,parents:[],Rotation:'$(Rotation)'}

# UNCOMMON
$execute positioned ^-1.66 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'treasure_lantern',vault:'snout',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'enchanted_book',vault:'ward',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^-0.33 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'evergrowth',vault:'wild',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.33 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'heavy_core',vault:'wild',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^0.33 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'quartz_core',vault:'vex',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'bell_breaker',vault:'coast',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^1.66 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'satchel',vault:'sentry',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1.66 ^2.5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'dragon_breath',vault:'sentry',rarity:2,tier:4,money_cost:7,research_cost:9999,parents:[],Rotation:'$(Rotation)'}

# RARE
$execute positioned ^-1.66 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'magnet',vault:'dune',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'void_crystal',vault:'silence',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.33 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'heighten',vault:'spire',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^0.33 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'living_spark',vault:'bolt',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'ember_lantern',vault:'eye',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^1.66 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'potion_pack',vault:'flow',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1.66 ^3.75 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'glistering_melon',vault:'flow',rarity:3,tier:6,money_cost:15,research_cost:9999,parents:[],Rotation:'$(Rotation)'}


# LEGENDARY
#$execute positioned ^-1.66 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'gold_idol',vault:'dune',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1.66 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'ravager_hoof',vault:'dune',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-1 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'void_bundle',vault:'silence',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^-0.33 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'lucky_feather',vault:'spire',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^0.33 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'riptide',vault:'bolt',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'catalyst',vault:'eye',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
#$execute positioned ^1.66 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'brush',vault:'flow',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}
$execute positioned ^1.66 ^5 ^ run function exigence:menu/money_menus/artifact/artifact_item_display {menu_tag:'MenuArtifact',item_name:'gathering_storm',vault:'flow',rarity:4,tier:8,money_cost:40,research_cost:9999,parents:[],Rotation:'$(Rotation)'}


# Give artifact displays tag
tag @e[type=minecraft:item_display,tag=NewItemDisplays] add Artifact
tag @e[type=minecraft:item_display,tag=NewItemDisplays,scores={Rarity=3}] add Trial
tag @e[type=minecraft:item_display,tag=NewItemDisplays,scores={Rarity=4}] add Crucible
