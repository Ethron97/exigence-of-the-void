# Called by money menu right click

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say research

# If not creative, clear X
$clear @a[tag=ItemShopping,gamemode=!creative,tag=Interacting] minecraft:prize_pottery_sherd $(research_cost)

# Grant advancement
$advancement grant @a[tag=ItemShopping] only exigence:unlockables/shop_unlock_$(item_name)

# Playsound
execute at @s run playsound minecraft:block.vault.open_shutter ambient @a ~ ~ ~ 1 1

# Refresh purchasability
function exigence:hub/item_shop/update_purchasability_full
