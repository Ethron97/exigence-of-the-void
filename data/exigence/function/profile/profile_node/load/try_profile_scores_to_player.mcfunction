# Copy profile specific scores to player, mostly for convienience.

## CONSTRAINTS
#   AS profile node

#=============================================================================================================

#say Try scores to player

scoreboard players operation #compare career.player_id = @s profile.node.player_id
scoreboard players set #online Temp 0

# Check if player is online
execute as @a if score @s career.player_id = #compare career.player_id run scoreboard players set #online Temp 1

# If they are, copy scores
execute at @s if score #online Temp matches 1 as @a if score @s career.player_id = #compare career.player_id run function exigence:profile/profile_node/load/copy_profile_scores_to_player

# If not, queue function
execute if score #online Temp matches 0 run scoreboard players set @s profile.node.queue_update_profile_scores 1