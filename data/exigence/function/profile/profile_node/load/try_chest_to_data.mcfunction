# Check if we can load this data

## CONSTRAINTS
#   AS profile node
#   AT profile data center

# OUTPUT
#   SCORE #data_loaded Temp

#====================================================================================================

say Try chest to data

#   OUTPUT: Default, data not loaded
scoreboard players set #data_loaded Temp 0

# Check if there are any other co-op profiles with the chests already loaded
scoreboard players operation #compare profile.node.coop_profile_id = @s profile.node.coop_profile_id
#   If there is ANY profile node with chests loaded who shares a coop profile id:
execute if score @s profile.node.coop_profile_id matches 1.. run say (IS COOP)
scoreboard players set #temptchd Temp 0
#   If this is the node with chests loaded... I don't think we care.
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[type=marker,scores={profile.node.coop_profile_id=1..},tag=ProfileNode,tag=ChestsLoaded,distance=..140] \
if score @s profile.node.profile_id = #compare profile.node.coop_profile_id run scoreboard players set #temptchd Temp 1
execute if score #temptchd Temp matches 1 run tag @s add WaitingForChests
execute if score #temptchd Temp matches 1 run say WAITING FOR CHESTS TAG ADDED
execute if score #temptchd Temp matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# If this node was previously waiting for chests, remove tag
execute if entity @s[tag=WaitingForChests] run say YES WAS WAITING FOR CHESTS
tag @s[tag=WaitingForChests] remove WaitingForChests

#   OUTPUT: Data loaded
scoreboard players set #data_loaded Temp 1

# Load from MAIN co-op profile if this profile is part of a coop profile
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[type=marker,scores={profile.node.coop_profile_id=1..},tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare profile.node.coop_profile_id at @s run function exigence:profile/profile_node/load/chest_to_data
# Else just load this node's data
execute unless score @s profile.node.coop_profile_id matches 1.. at @s run function exigence:profile/profile_node/load/chest_to_data
