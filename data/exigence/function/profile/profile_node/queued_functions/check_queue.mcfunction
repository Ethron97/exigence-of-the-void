# Check profile node for any queued functions
#   Should be called after player logs in

## CONSTRAINTS
#   AS profile node

#=============================================================================================================

scoreboard players operation #compare career.player_id = @s profile.node.player_id

# When someone leaves a coop profile, the ids may need rearranged. If someone is offline, this gets queued to update
# when they log back in.
execute if score @s profile.node.queue_update_profile_scores matches 1 at @s as @a if score @s career.player_id = #compare career.player_id run function exigence:profile/profile_node/load/copy_profile_scores_to_player

