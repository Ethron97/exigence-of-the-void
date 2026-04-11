# Handle closing functions to clear/reset the room after all players have left (or timed out)

## CONSTRAINTS
#   AS/AT profile locker room node

#====================================================================================================

#say (D3) Unload locker room

scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

#====================================================================================================
# Get storage from chest contents
# Returns: #chests_saved Temp
function exigence:hub/locker_room/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
# Inputting: #chests_saved Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest
#====================================================================================================

# Kill all menu entities
execute store result storage exigence:temp locker_room_id int 1 run scoreboard players get @s hub.locker_room_id
function exigence:hub/locker_room/menu/unload_menu with storage exigence:temp

# Remove interactions
function exigence:hub/locker_room/node/kill_all_interactions

# Clear number from name
function exigence:hub/locker_room/node/private/set_id_to_name {id:""}

# Reset id
scoreboard players reset @s hub.entity.profile_id
scoreboard players reset @s hub.entity.coop_profile_id
scoreboard players set @s hub.locker_room_id 0
scoreboard players reset @s hub.entity.room_id