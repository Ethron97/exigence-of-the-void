# Called when a player achieves a vault unlock threshold
#   I.e., opening a vault on level 1-2, and winning a trial/crucible on level 3

## CONSTRAINTS
#   AS player

## INPUT
#   STR vault_string

#====================================================================================================

$say Shop unlock $(vault_string)

# Update the scores of this player's profile node, and any coop profile nodes if applicable
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id
execute if score @s profile.player.coop_profile_id matches 1.. run scoreboard players operation #compare profile.node.profile_id = @s profile.player.coop_profile_id

# Main profile
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_unlock.vault.$(vault_string) 1

# Coop profiles
$execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run scoreboard players set @s profile.shop_unlock.vault.$(vault_string) 1

# Give advancement to player(s)
$advancement grant @s only exigence:vault/$(vault_string)
$execute as @a if score @s profile.player.coop_profile_id = #compare profile.node.profile_id run advancement grant @s only exigence:vault/$(vault_string)
