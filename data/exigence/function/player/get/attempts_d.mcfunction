# Get attempts scores

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #attempts_d#1-6 Temp

#====================================================================================================

scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

# Outputs: #attempts_d#1-6 Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/get/attempts_d
