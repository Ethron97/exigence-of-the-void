# Called by item shop display purchase

## CONSTRAINTS
#   AS item_display with data "one_time:1"

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# If not creative, clear X
$clear @a[tag=ItemShopping,gamemode=!creative,tag=Interacting] diamond $(money_cost)

# Grant advancemnet
$advancement grant @a[tag=ItemShopping] only exigence:unlockables/one_time/$(item_name)

# Playsound
execute at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# Refresh purchasability
function exigence:hub/item_shop/update_purchasability_full
