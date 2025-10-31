# Called by money menu right click

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say research

# If not creative, clear X
$clear @p[tag=ItemShopping,gamemode=!creative,tag=Interacting] minecraft:prize_pottery_sherd $(research_cost)

# Grant advancement (to all players in the shop, if coop)
$advancement grant @a[tag=ItemShopping] only exigence:unlockables/shop_unlock_$(item_name)

# Grant unlock score to profile node(s)
$execute as @p[tag=ItemShopping,tag=Interacting] run function exigence:profile/profile_node/shop_unlock {item_name:$(item_name)}

# Playsound
execute at @s run playsound minecraft:block.vault.open_shutter ambient @a ~ ~ ~ 1 1

# Refresh purchasability
function exigence:hub/item_shop/update_purchasability_full


# Try and give advancement to COOP players who are outside the shop
execute unless score @s profile.coop_profile_id matches 1.. run return 1
scoreboard players operation #compare profile.coop_profile_id = @s profile.coop_profile_id
$execute as @a if score @s profile.coop_profile_id = #compare profile.coop_profile_id run advancement grant @s only exigence:unlockables/shop_unlock_$(item_name)