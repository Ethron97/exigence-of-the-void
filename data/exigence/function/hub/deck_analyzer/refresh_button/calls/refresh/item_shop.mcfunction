# Refresh FROM ITEM SHOP ROOM

## CONSTRAINTS
#   AS refresh button display

## INPUT
#   data

#====================================================================================================

$say Refresh FROM ITEM SHOP ROOM $(profile_id)

#====================================================================================================
## SAVE CHESTS FOR REFRESH
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
execute in exigence:hub positioned -27.5 200.0 0.5 run function exigence:hub/item_shop/load/save_chests_no_remove

# Data -> profile chest
scoreboard players set #remove_tag Temp 0
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data positioned 8 128 8 as @n[distance=..140,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] \
run function exigence:profile/profile_node/save/try_data_to_chest
#====================================================================================================
