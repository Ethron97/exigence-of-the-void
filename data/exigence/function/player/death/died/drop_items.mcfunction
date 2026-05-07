# Calls sub-functions to drop various items
#   A separate function mostly so we can unit test
#   Called from death.died.died_at

## CONSTRAINTS
#   AS player
#   AT where to drop items

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Dropping items

function exigence:player/drop/coins/drop
function exigence:player/drop/glint/drop
function exigence:player/drop/research/drop

execute if items entity @s hotbar.0 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.0'}
execute if items entity @s hotbar.1 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.1'}
execute if items entity @s hotbar.2 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.2'}
execute if items entity @s hotbar.3 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.3'}
execute if items entity @s hotbar.4 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.4'}
execute if items entity @s hotbar.5 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.5'}
execute if items entity @s hotbar.6 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.6'}
execute if items entity @s hotbar.7 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.7'}
execute if items entity @s hotbar.8 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'hotbar.8'}

execute if items entity @s inventory.0 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.0'}
execute if items entity @s inventory.1 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.1'}
execute if items entity @s inventory.2 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.2'}
execute if items entity @s inventory.3 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.3'}
execute if items entity @s inventory.4 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.4'}
execute if items entity @s inventory.5 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.5'}
execute if items entity @s inventory.6 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.6'}
execute if items entity @s inventory.7 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.7'}
execute if items entity @s inventory.8 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.8'}
execute if items entity @s inventory.9 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.9'}
execute if items entity @s inventory.10 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.10'}
execute if items entity @s inventory.11 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.11'}
execute if items entity @s inventory.12 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.12'}
execute if items entity @s inventory.13 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.13'}
execute if items entity @s inventory.14 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.14'}
execute if items entity @s inventory.15 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.15'}
execute if items entity @s inventory.16 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.16'}
execute if items entity @s inventory.17 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.17'}
execute if items entity @s inventory.18 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.18'}
execute if items entity @s inventory.19 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.19'}
execute if items entity @s inventory.20 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.20'}
execute if items entity @s inventory.21 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.21'}
execute if items entity @s inventory.22 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.22'}
execute if items entity @s inventory.23 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.23'}
execute if items entity @s inventory.24 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.24'}
execute if items entity @s inventory.25 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.25'}
execute if items entity @s inventory.26 * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'inventory.26'}

execute if items entity @s weapon.offhand * run function exigence:player/death/died/drop_items/try_drop_slot {slot_name:'weapon.offhand'}