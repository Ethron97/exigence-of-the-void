# Get number of players on this profile

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #profile_size Temp

#====================================================================================================

# Simple case (no coop)
execute unless score @s profile.player.coop_profile_id matches 1.. run return run scoreboard players set #profile_size Temp 1
#----------------------------------------------------------------------------------------------------

scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

# Outputs: #profile_size Temp
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/get/profile_size