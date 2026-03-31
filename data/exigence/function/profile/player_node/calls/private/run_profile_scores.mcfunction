# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run copy profile scores

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.profile_scores

# Call player function:
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute in exigence:profile_data positioned 8 128 8 as @e[type=marker,tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare profile.player.profile_id run function exigence:profile/profile_node/load/copy_profile_scores_to_player
