# Store player head information in temp storage

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players operation #temp3583 Temp = @s career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] \
if score @s profile.node.player_id = #temp3583 Temp run function exigence:profile/player_node/set/clear_hand_player_head_data
