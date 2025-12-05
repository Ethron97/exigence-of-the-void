# Refresh FROM PROFILE SELECTOR ROOM

## CONSTRAINTS
#   AS refresh button display

## INPUT
#   data

#=============================================================================================================

$say Refresh FROM PROFILE SELECTOR ROOM $(profile_id)

#=============================================================================================================
## SAVE CHESTS
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
$execute in exigence:hub positioned 999.5 128 6.5 at @n[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/profile_selector/load/save_chests_no_remove

# Data -> profile chest
scoreboard players set #remove_tag Temp 0
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/save/try_data_to_chest
#=============================================================================================================
