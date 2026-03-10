# Called by money menu right click

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
$say research $(item_name)

# If not creative, clear X
$clear @p[distance=..16,tag=ItemShop,gamemode=!creative,tag=Interacting] minecraft:prize_pottery_sherd $(research_cost)
$scoreboard players remove #Total shop.player.research_to_spend $(money_cost)

# Grant unlock score to profile node(s)
#   Call as one player; Coop profiles get handled in the function.
$execute as @p[distance=..16,tag=ItemShop,tag=Interacting] run function exigence:profile/profile_node/set/shop_unlock {item_name:'$(item_name)'}

# Playsound
playsound minecraft:block.vault.open_shutter ambient @a ~ ~ ~ 1 1

# Update purchasability lines to this and child frames
execute at @s as @e[distance=..5,type=item_display,tag=ItemShopDisplay] run function exigence:hub/item_shop/private/update_purchasability_a_
