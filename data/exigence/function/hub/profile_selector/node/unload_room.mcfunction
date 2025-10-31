# Handle closing functions to clear/reset the room after all players have left (or timed out)

## CONSTRAINTS
#   AS/AT profile selector node

#=============================================================================================================

say Unload room

# Get storage from chest contents
function exigence:hub/profile_selector/load/save_chests

# Store data
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.node.profile_id at @s run function exigence:profile/profile_node/save/data_to_chest

# Remove chests
function exigence:hub/profile_selector/load/remove_chests

# Kill all menu entities
execute store result storage exigence:temp profile_selector_id int 1 run scoreboard players get @s hub.profile_selector_id
function exigence:hub/profile_selector/menu/unload_menu with storage exigence:temp

# Remove interaction
function exigence:hub/profile_selector/node/kill_interaction
