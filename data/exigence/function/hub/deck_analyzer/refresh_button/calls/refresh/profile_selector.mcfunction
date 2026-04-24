# Refresh FROM PROFILE SELECTOR ROOM

## CONSTRAINTS
#   AS refresh button display

## INPUT
#   data

#====================================================================================================

#$say (D3) Refresh from PROFILE SELECTOR room $(profile_id)

#====================================================================================================
## SAVE CHESTS FOR REFRESH
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
$execute in exigence:hub at @n[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:marker,scores={hub.profile_selector_id=$(profile_selector_id)},tag=ProfileSelectorNode] \
run function exigence:hub/profile_selector/load/save_chests_no_remove

# Data -> profile chest
scoreboard players set #remove_tag Temp 0
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data as @n[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode] \
run function exigence:profile/profile_node/save/try_data_to_chest
#====================================================================================================
