# Called when a player researches something in the item shop

## CONSTRAINTS
#   AS player

## INPUT
#   STR item_name

#=============================================================================================================

# Update the scores of this player's profile node, and any coop profile nodes if applicable
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# Main profile
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set profile.shop_unlock.$(item_name) 1

# Coop profiles
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run scoreboard players set profile.shop_unlock.$(item_name) 1
