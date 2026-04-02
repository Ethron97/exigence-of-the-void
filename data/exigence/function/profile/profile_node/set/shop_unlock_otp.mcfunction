# Called when a player purchases a one-time-purchase upgrade in the item shop

## CONSTRAINTS
#   AS player in the item shop

## INPUT
#   STR item_name

#====================================================================================================
execute unless entity @s[tag=ItemShop] run tellraw @s [{text:"You should not be calling this function (shop_unlock)",color:red}]
execute unless entity @s[tag=ItemShop] run return fail
#====================================================================================================

#$say Shop one-time-purchase $(item_name)

# Update the scores of this player's profile node, and any coop profile nodes if applicable
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# Main profile
$execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_purchased.$(item_name) 1

# Coop profiles
$execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_purchased.$(item_name) 1

# Give advancement to player(s)
$advancement grant @s only exigence:unlockables/one_time/$(item_name)
$execute as @a if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run advancement grant @s only exigence:unlockables/one_time/$(item_name)

# Add to the shop unlock array list
$data modify storage exigence:shop one_time_purchased append value $(item_name)
