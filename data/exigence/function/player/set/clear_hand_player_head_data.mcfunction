# Store player head information in temp storage

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players operation #temp3583 Temp = @s career.player_id
execute in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s profile.node.player_id = #temp3583 Temp run function exigence:profile/player_node/set/clear_hand_player_head_data
