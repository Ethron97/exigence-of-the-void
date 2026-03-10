# Called when a player researches something in the item shop

## CONSTRAINTS
#   AS player in the item shop

## INPUT
#   STR item_name

#====================================================================================================
execute unless entity @s[tag=ItemShop] run tellraw @s [{text:"You should not be calling this function (shop_unlock)",color:red}]
execute unless entity @s[tag=ItemShop] run return fail
#====================================================================================================

$say Shop unlock $(item_name)

# Update the scores of this player's profile node, and any coop profile nodes if applicable
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# Main profile
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_unlock.$(item_name) 1

# Coop profiles
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_unlock.$(item_name) 1

# Give advancement to player(s)
$advancement grant @s only exigence:unlockables/shop_unlock_$(item_name)
$execute as @a if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run advancement grant @s only exigence:unlockables/shop_unlock_$(item_name)


# Add to the shop unlock array list
$data modify storage exigence:shop shop_unlocked append value $(item_name)
