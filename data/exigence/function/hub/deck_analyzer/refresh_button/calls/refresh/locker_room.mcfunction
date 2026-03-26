# Refresh from locker room

## CONSTRAINTS
#   AS refresh button display

## INPUT
#   data

#====================================================================================================

$say Refresh from LOCKER ROOM room $(profile_id) $(locker_room_id)

#====================================================================================================
## SAVE CHESTS FOR REFRESH
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
$execute in exigence:hub positioned 0 100 0 at @n[distance=..200,type=marker,tag=LockerRoomNode,scores={hub.locker_room_id=$(locker_room_id)}] \
run function exigence:hub/locker_room/load/save_chests_no_remove

# Data -> profile chest
scoreboard players set #remove_tag Temp 0
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data positioned 8 128 8 as @n[distance=..140,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/save/try_data_to_chest
#====================================================================================================
