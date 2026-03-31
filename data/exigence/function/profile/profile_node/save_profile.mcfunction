# All functionality for saving a profile

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#====================================================================================================
execute unless predicate exigence:dimension/location/profile_data run return 1
#====================================================================================================

# Save inventory to chests
$execute positioned 8 128 8 at @e[scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,distance=..140] positioned ~1 ~ ~ run function exigence:profile/profile_node/save/save_inventory

# Save scoreboards
