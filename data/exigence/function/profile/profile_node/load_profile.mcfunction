# All functionality for loading a profile to a player

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#====================================================================================================
execute unless dimension exigence:profile_data run return run say (C) Not in dimension Profile Data?
#====================================================================================================

#say (D3) Load profile

# Load inventory
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] positioned ~1 ~ ~ run function exigence:profile/profile_node/load/load_inventory

# Load scores
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] run function exigence:profile/profile_node/load/copy_profile_scores_to_player

# Load player advancements (from scoreboards)
#   Advancements are now purely for player's benefit, not game tracking
function exigence:scoreboard/generated_functions/revoke_advancements
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] run function exigence:profile/player/call_grant_advancements_from_scores
