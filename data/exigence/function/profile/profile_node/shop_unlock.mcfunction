# Called when a player researches something in the item shop

## CONSTRAINTS
#   AS player

## INPUT
#   STR item_name

#=============================================================================================================

## MAIN PROFILE
# Update the scores of this player's profile node, and any coop profile nodes
scoreboard players operation #compare profile.node.profile_id = @s profile.profile_id

$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set profile.shop_unlock.$(item_name) 1

## COOP PROFILE(S)
execute unless score @s profile.coop_profile_id matches 1.. run return 1
scoreboard players operation #compare profile.coop_profile_id = @s profile.coop_profile_id

$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.coop_profile_id = #compare profile.coop_profile_id run scoreboard players set profile.shop_unlock.$(item_name) 1
