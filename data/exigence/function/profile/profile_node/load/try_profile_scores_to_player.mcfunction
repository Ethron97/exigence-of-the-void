# Copy profile specific scores to player, mostly for convienience.

## CONSTRAINTS
#   AS profile node

#====================================================================================================

#say (D3) Try scores to player

scoreboard players operation #compare career.player_id = @s profile.node.player_id
scoreboard players set #online Temp 0

# Check if player is online
#   Returns: #online Temp
execute as @a if score @s career.player_id = #compare career.player_id run function exigence:profile/profile_node/load/copy_profile_scores_to_player

execute if score #online Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

# If player not found, queue function on player node
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players add @s player.node.queue.profile_scores 1
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players add @s player.node.queue 1
