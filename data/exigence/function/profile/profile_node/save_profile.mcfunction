# All functionality for saving a profile

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#=============================================================================================================
execute unless predicate exigence:dimension/entity/profile_data run return 1
#=============================================================================================================

# Save inventory to chests
$execute at @e[distance=..1000,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] positioned ~1 ~ ~ run function exigence:profile/profile_node/save/save_inventory

# Save advancements (from scoreboards)
#   Make sure scores are up to date for current Story

#   Make sure scores are up to date for current Shop Unlocks


# Save scoreboards
