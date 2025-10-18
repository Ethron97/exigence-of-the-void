# Set the local profile id for this profile

## CONSTRAINTS
#   AS ProfileNode
#   IN exigence:profile_data

## INPUT
#   INT player_id

#=============================================================================================================

# Allows us to hard-set it anytime before this function (or after?)
execute if score @s profile.node.local_profile_id matches 1.. run return 0

# Assign the lowest unused id from 1-5
$execute unless entity @e[distance=..1000,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.local_profile_id=5}] run scoreboard players set @s profile.node.local_profile_id 5

$execute unless entity @e[distance=..1000,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.local_profile_id=4}] run scoreboard players set @s profile.node.local_profile_id 4

$execute unless entity @e[distance=..1000,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.local_profile_id=3}] run scoreboard players set @s profile.node.local_profile_id 3

$execute unless entity @e[distance=..1000,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.local_profile_id=2}] run scoreboard players set @s profile.node.local_profile_id 2

$execute unless entity @e[distance=..1000,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.local_profile_id=1}] run scoreboard players set @s profile.node.local_profile_id 1
