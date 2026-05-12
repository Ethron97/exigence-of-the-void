# Check if this slot has dropable item

## CONSTRAINTS
#   AS player
#   Assumes slot has data (verify before calling this, to avoid unnecessary macro)

## INPUT
#   STR slot_name

#====================================================================================================

$execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. run say (D4) Try drop slot $(slot_name)

# Return if soulbound
$execute if items entity @s $(slot_name) *[custom_data~{is_soulbound:true}] run return fail
#----------------------------------------------------------------------------------------------------

## SWITCH on item type
# If on the standard drop list, drop
$execute if items entity @s $(slot_name) #exigence:drop_on_death run return run function exigence:player/drop/drop_slot_specific {slot_name:'$(slot_name)'}

# If item is a vault key and player does NOT have vault keep, drop
# If vault key, run return here first because void bundle doesn't key vault keys by default. They're only bag if you have vault keep.
$execute if items entity @s $(slot_name) #exigence:vault_key run return run execute unless score @s game.player.mod.vault_keep matches 1.. run function exigence:player/drop/drop_slot_specific {slot_name:'$(slot_name)'}

# If consumable and player does NOT have void bundle, drop
$execute if items entity @s $(slot_name) #exigence:consumable run return run execute unless score @s game.player.mod.void_bundle matches 1.. run function exigence:player/drop/drop_slot_specific {slot_name:'$(slot_name)'}
