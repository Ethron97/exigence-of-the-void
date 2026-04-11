# Refresh from predungeon

## CONSTRAINTS
#   AS refresh button display

## INPUT
#   data

#====================================================================================================

#say (D3) Refresh from PREDUNGEON room $(profile_id)

#====================================================================================================
## SAVE CHESTS FOR REFRESH
# Chests -> data
#   OUTPUTS chests_saved if there was data to save
execute in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/load/save_chests_no_remove

# Data -> profile chest
scoreboard players set #remove_tag Temp 0
$execute if score #chests_saved Temp matches 1 \
in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode,limit=1] \
run function exigence:profile/profile_node/save/try_data_to_chest
#====================================================================================================
