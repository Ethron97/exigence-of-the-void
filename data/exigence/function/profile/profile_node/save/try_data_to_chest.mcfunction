# Not so much a checker as just a, "load to profile if/else"

## CONSTRAINTS
#   AS profile node
#   AT profile data center

## INPUT
#   SCORE #chests_saved Temp

#====================================================================================================

say Try data to chest

# If there were no chests to save, remove waiting for chests tag
execute if score #chests_saved Temp matches 0 if entity @s[tag=WaitingForChests] run say REMOVING waitin for chests TAG
execute if score #chests_saved Temp matches 0 if entity @s[tag=WaitingForChests] run tag @s remove WaitingForChests
execute if score #chests_saved Temp matches 0 run return fail
#----------------------------------------------------------------------------------------------------

say Try data to chest pt2

# Save to MAIN co-op profile if this profile is part of a coop profile
scoreboard players operation #compare profile.node.coop_profile_id = @s profile.node.coop_profile_id
execute if score @s profile.node.coop_profile_id matches 1.. \
as @e[type=marker,scores={profile.node.coop_profile_id=1..},tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare profile.node.coop_profile_id at @s run function exigence:profile/profile_node/save/data_to_chest
# Else just load this node's data
execute unless score @s profile.node.coop_profile_id matches 1.. at @s run function exigence:profile/profile_node/save/data_to_chest

say Check for waiting...
## CHECK FOR WAITING
# If co-op profile, check if any other co-op profiles are WaitingForChest, and if so, pick a random one to load to
scoreboard players set #loaded_to_waiting Temp 0
execute if score @s profile.node.coop_profile_id matches 1.. as @e[type=marker,tag=ProfileNode,tag=WaitingForChests,distance=..300,sort=random] \
if score @s profile.node.coop_profile_id = #compare profile.node.coop_profile_id run function exigence:profile/profile_node/load/try_load_to_waiting
