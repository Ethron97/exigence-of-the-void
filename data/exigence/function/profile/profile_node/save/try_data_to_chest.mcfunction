# Not so much a checker as just a, "load to profile if/else"

## CONSTRAINTS
#   AS profile node
#   AT profile data center

# OUTPUT
#   SCORE #data_loaded Temp

#=============================================================================================================

say Try data to chest

# Load to MAIN co-op profile if this profile is part of a coop profile
scoreboard players operation #compare profile.node.coop_profile_id = @s profile.node.coop_profile_id
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] \
if score @s profile.node.profile_id = #compare profile.node.coop_profile_id at @s run function exigence:profile/profile_node/save/data_to_chest
# Else just load this node's data
execute unless score @s profile.node.coop_profile_id matches 1.. at @s run function exigence:profile/profile_node/save/data_to_chest
