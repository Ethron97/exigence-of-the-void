# Convert a profile node from COOP to single player

## CONSTRAINTS
#   AS profile node

#=============================================================================================================

say COop to sp

# If this is the only remaining profile, reset
scoreboard players reset @s profile.node.coop_profile_id
scoreboard players reset @s profile.node.coop_profile_index
scoreboard players set #new_main_id Temp 0
execute if score #old_index Temp matches 1 run function exigence:profile/profile_node/load/try_profile_scores_to_player
