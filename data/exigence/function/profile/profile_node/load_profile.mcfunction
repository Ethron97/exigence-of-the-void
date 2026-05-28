# All functionality for loading a profile to a player

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#====================================================================================================
execute unless dimension exigence:profile_data run return run say (C) Not in dimension Profile Data?
#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 2.. run say (D2) Load profile

tag @s add LoadingProfile

# Load inventory
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] positioned ~1 ~ ~ run function exigence:profile/profile_node/load/load_inventory

# Load scores
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] run function exigence:profile/profile_node/load/copy_profile_scores_to_player

# Load player advancements (from scoreboards)
#   Advancements are now purely for player's benefit, not game tracking
function exigence:scoreboard/generated_functions/revoke_advancements
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] run function exigence:profile/player/call_grant_advancements_from_scores

# If co-op profile, inform fellow co-op members that you switch to it
$execute if score @s profile.player.coop_profile_id matches 1.. as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)}\
,tag=ProfileNode,limit=1] run function exigence:profile/profile_node/private/inform_loaded_profile with entity @s data.custom_data

# Copy this profile score to the profile node
scoreboard players operation #compare career.player_id = @s career.player_id
$execute as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id run scoreboard players set @s player.node.loaded_profile_id $(profile_id)

tag @s remove LoadingProfile