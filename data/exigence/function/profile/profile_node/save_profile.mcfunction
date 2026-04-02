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
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode] positioned ~1 ~ ~ run function exigence:profile/profile_node/save/save_inventory

# Save scoreboards
