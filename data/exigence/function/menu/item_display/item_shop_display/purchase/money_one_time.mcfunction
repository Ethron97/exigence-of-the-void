# Called by item shop display purchase

## CONSTRAINTS
#   AS/AT item_display with data "one_time:1"

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @p[distance=..16,tag=ItemShop,gamemode=!creative,tag=Interacting] diamond $(money_cost)
$scoreboard players remove #Total shop.player.money_to_spend $(money_cost)

# Grant advancemnet
#   Call as one player; Coop profiles get handled in the function.
$execute as @p[distance=..16,tag=ItemShop,tag=Interacting] run function exigence:profile/profile_node/set/shop_unlock_otp {item_name:$(item_name)}

# Playsound
playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1
