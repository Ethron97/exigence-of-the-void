# Check if we can load this data

## CONSTRAINTS
#   AS profile node
#   AT profile data center

# OUTPUT
#   SCORE #data_loaded Temp

#=============================================================================================================

say Try chest to data

#   OUTPUT: Default, data not loaded
scoreboard players set #data_loaded Temp 0

# Check if there are any other co-op profiles with the chests already loaded
scoreboard players operation #compare profile.node.coop_profile_id = @s profile.node.coop_profile_id
#   If there is ANY profile node with chests loaded who shares a profile id:
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[distance=..200,type=marker,tag=ProfileNode,tag=ChestsLoaded,scores={profile.node.coop_profile_id=1..}] \
if score @s profile.node.coop_profile_id = #compare profile.node.coop_profile_id run return fail

#   OUTPUT: Data loaded
scoreboard players set #data_loaded Temp 1

# Load from MAIN co-op profile if this profile is part of a coop profile
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] \
if score @s profile.node.profile_id = #compare profile.node.coop_profile_id at @s run function exigence:profile/profile_node/load/chest_to_data
# Else just load this node's data
execute unless score @s profile.node.coop_profile_id matches 1.. at @s run function exigence:profile/profile_node/load/chest_to_data
