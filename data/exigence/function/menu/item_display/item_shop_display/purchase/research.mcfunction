# Called by money menu right click

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# DEBUG
#$say research $(item_name)

# If not creative, clear X
$clear @p[distance=..16,tag=ItemShop,gamemode=!creative,tag=Interacting] minecraft:prize_pottery_sherd $(research_cost)
$scoreboard players remove #Total shop.player.research_to_spend $(money_cost)

# Grant unlock score to profile node(s)
#   Call as one player; Coop profiles get handled in the function.
$execute as @p[distance=..16,tag=ItemShop,tag=Interacting] run function exigence:profile/profile_node/set/shop_unlock {item_name:'$(item_name)'}

# Playsound
playsound minecraft:block.vault.open_shutter ambient @a ~ ~ ~ 1 1

# Update purchasability lines to this and child frames
execute as @e[distance=..3,type=item_display,tag=ItemShopDisplay,tag=!IsResearched] run function exigence:hub/item_shop/private/update_purchasability_a_
execute as @e[distance=..3,type=item_display,tag=ItemShopDisplay,tag=!IsResearched] run function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
execute as @e[distance=..3,type=item_display,tag=ItemShopDisplay,tag=!IsResearched] unless entity @s[tag=!IsTierUnlocked,tag=!IsParentResearched] run function exigence:menu/item_display/item_shop_display/update_parent_line_colors with entity @s item.components."minecraft:custom_data"
function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
function exigence:menu/item_display/item_shop_display/update_parent_line_colors with entity @s item.components."minecraft:custom_data"