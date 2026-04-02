# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run copy profile scores

# Reset score
scoreboard players reset @n[type=armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.profile_scores

# Call player function:
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/load/copy_profile_scores_to_player
