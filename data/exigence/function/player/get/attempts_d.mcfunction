# Get attempts scores

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #attempts_d#1-6 Temp

#====================================================================================================

scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

# Outputs: #attempts_d#1-6 Temp
execute in exigence:profile_data positioned 8 128 8 as @e[type=marker,tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/get/attempts_d
