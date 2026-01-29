# Copy data from storage to set hand for this players' node

## CONSTRAINTS
#   AS player

## INPUT
#   exigence:temp player_head

#====================================================================================================

scoreboard players operation #temp3583 Temp = @s career.player_id
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #temp3583 Temp run function exigence:profile/player_node/set/hand_player_head_data
