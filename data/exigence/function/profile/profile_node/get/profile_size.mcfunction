# Get number of players on ths profile

## CONSTRAINTS
#   AS profile node

## OUTPUT
#   SCORE #profile_size Temp

#====================================================================================================

# Simple case (no coop)
execute unless score @s profile.node.coop_profile_id matches 1.. run return run scoreboard players set #profile_size Temp 1
#----------------------------------------------------------------------------------------------------

scoreboard players operation #compare profile.node.coop_profile_id = @s profile.node.coop_profile_id

scoreboard players set #profile_size Temp 0
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.coop_profile_id = #compare profile.node.coop_profile_id run scoreboard players add #profile_size Temp 1