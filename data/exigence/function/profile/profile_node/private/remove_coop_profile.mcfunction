# Called by remove_profile if it is a co-op profile

## CONSTRAINTS
#   AS profile node

#=============================================================================================================

say Remove coop profile

# Save profile index
scoreboard players operation #old_index Temp = @s profile.node.coop_profile_index
scoreboard players operation #old_coop_id Temp = @s profile.node.coop_profile_id

# Send message "X has left your coop profile"
execute in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_index=1..}] if score @s profile.node.coop_profile_id = #old_coop_id Temp \
run function exigence:profile/profile_node/private/inform_player_left

# If this was the main profile, try save chests to DATA
execute if score #old_index Temp matches 1 in exigence:profile_data positioned 8 128 8 run function exigence:profile/profile_node/load/try_chest_to_data

# Reset player index so we can detect new MAIN if needed
scoreboard players reset @s profile.node.coop_profile_index
scoreboard players reset @s profile.node.coop_profile_id

# Store number of remaining profiles (after this one got deleted)
scoreboard players set #remaining_profiles Temp 0
execute in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] if score @s profile.node.coop_profile_id = #old_coop_id Temp \
run scoreboard players add #remaining_profiles Temp 1

# Reassign index scores (and chests)
#   Outputs #new_main_id Temp
execute in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] if score @s profile.node.coop_profile_id = #old_coop_id Temp \
run function exigence:profile/profile_node/private/update_coop_index

#=============================================================================================================
# These effectively only fire if there are at least 2 remaining profiles
# Reassign new coop profile id
execute if score #remaining_profiles Temp matches 2.. in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_id=1..}] if score @s profile.node.coop_profile_id = #old_coop_id Temp \
run scoreboard players operation @s profile.node.coop_profile_id = #new_main_id Temp

# Update all player's coop_ scores (or queue it if they are offline)
#   We only need to do this if the MAIN changed.
execute if score #remaining_profiles Temp matches 2.. if score #old_index Temp matches 1 in exigence:profile_data positioned 8 128 8 \
as @e[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.coop_profile_index=1..}] if score @s profile.node.coop_profile_id = #new_main_id Temp \
run function exigence:profile/profile_node/load/try_profile_scores_to_player
#=============================================================================================================

# Update slot displays
execute store result storage exigence:temp old_coop_id int 1 run scoreboard players get #old_coop_id Temp
function exigence:profile/profile_node/private/update_slot_coop with storage exigence:temp

# Refresh coop status lists
function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays
