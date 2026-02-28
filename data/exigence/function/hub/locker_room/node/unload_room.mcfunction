# Handle closing functions to clear/reset the room after all players have left (or timed out)

## CONSTRAINTS
#   AS/AT profile locker room node

#====================================================================================================

say Unload locker room

scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

# Get storage from chest contents
# Returns: #chests_saved Temp
function exigence:hub/locker_room/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
# Inputting: #chests_saved Temp
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

# Remove chests
function exigence:hub/locker_room/load/remove_chests

# Remove interactions
#function exigence:hub/profile_selector/node/kill_interaction

# Clear number from name
function exigence:hub/locker_room/node/private/set_id_to_name {id:""}

# Reset id
scoreboard players reset @s hub.entity.profile_id
scoreboard players set @s hub.locker_room_id 0
scoreboard players reset @s hub.entity.room_id