# All functionality for loading a profile to a player

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#====================================================================================================
execute unless predicate exigence:dimension/entity/profile_data run return 1
#====================================================================================================

say Load profile

# Load inventory
$execute positioned 8 128 8 at @n[scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,distance=..140] positioned ~1 ~ ~ run function exigence:profile/profile_node/load/load_inventory

# Load scores
$execute positioned 8 128 8 at @n[scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,distance=..140] run function exigence:profile/profile_node/load/copy_profile_scores_to_player

# Load player advancements (from scoreboards)
#   Advancements are now purely for player's benefit, not game tracking
function exigence:scoreboard/generated_functions/revoke_advancements
$execute positioned 8 128 8 at @n[scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,distance=..140] run function exigence:scoreboard/generated_functions/grant_advancements_from_scores
