# All functionality for loading a profile to a player

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#=============================================================================================================
execute unless predicate exigence:dimension/entity/profile_data run return 1
#=============================================================================================================

# Load inventory
$execute at @e[distance=..1000,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] positioned ~1 ~ ~ run function exigence:profile/profile_node/load/load_inventory

# Load scoreboards


# Load advancements (from scoreboards)

