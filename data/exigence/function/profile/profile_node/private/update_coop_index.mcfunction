# Called from remove_coop_profile

## CONSTRAINTS
#   AS profile node

## INPUT
#   SCORE #old_index Temp - profile index of the profile being deleted
#   SCORE #data_loaded Temp - if main got deleted, and chests were saved to data
#   SCORE #remaining_profiles Temp - Number of remaining profiles on this coop

#=============================================================================================================

say Update coop index
# Re-asign profile indexes (based on the removed one)
# Old index 4 = no changes

# Old index 3 = Move 4->3
execute if score #old_index Temp matches 3 if score @s profile.node.coop_profile_index matches 4 run scoreboard players remove @s profile.node.coop_profile_index 1
# Old index 2 = Move 3..4 -1
execute if score #old_index Temp matches 2 if score @s profile.node.coop_profile_index matches 3..4 run scoreboard players remove @s profile.node.coop_profile_index 1
# Old index 1 = Move 2..4 -1
execute if score #old_index Temp matches 1 if score @s profile.node.coop_profile_index matches 2..4 run scoreboard players remove @s profile.node.coop_profile_index 1

# If this is the new main, store profile_id
execute if score @s profile.node.coop_profile_index matches 1 run scoreboard players operation #new_main_id Temp = @s profile.node.profile_id

# If this is the new main (and chests were saved), load chests
execute if score #old_index Temp matches 1 if score #data_loaded Temp matches 1 if score @s profile.node.coop_profile_index matches 1 \
at @s run function exigence:profile/profile_node/save/data_to_chest

execute if score #remaining_profiles Temp matches 1 run function exigence:profile/profile_node/private/coop_to_sp
