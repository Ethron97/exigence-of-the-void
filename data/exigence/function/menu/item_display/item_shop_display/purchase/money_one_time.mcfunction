# Called by item shop display purchase

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @p[tag=ItemShop,tag=Interacting,distance=..16,gamemode=!creative] diamond $(money_cost)
$scoreboard players remove #Total shop.player.money_to_spend $(money_cost)

# Grant advancemnet
#   Call as one player; Coop profiles get handled in the function.
$execute as @p[tag=ItemShop,tag=Interacting,distance=..16] run function exigence:profile/profile_node/set/shop_unlock_otp {item_name:$(item_name)}

# Playsound
playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# Update display
function exigence:hub/item_shop/private/update_purchasability_tags
function exigence:menu/item_display/item_shop_display/cost_display/delete with entity @s item.components."minecraft:custom_data"
function exigence:menu/item_display/item_shop_display/calls/unhover
function exigence:menu/item_display/item_shop_display/calls/hover