# Handle closing functions to clear/reset the room after all players have left (or timed out)

## CONSTRAINTS
#   AS/AT profile selector node

#====================================================================================================

say Unload room

# Get loaded profile
scoreboard players reset #compare profile.node.profile_id
execute at @s as @n[type=item_display,tag=ProfileLoaded,tag=Selected,distance=..16] store result score #compare profile.node.profile_id run data get entity @s item.components."minecraft:custom_data".profile_id

# Get storage from chest contents
# Returns: #chests_saved Temp
function exigence:hub/profile_selector/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
# Inputting: #chests_saved Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

# Remove chests
function exigence:hub/profile_selector/load/remove_chests

# Kill all menu entities
execute store result storage exigence:temp profile_selector_id int 1 run scoreboard players get @s hub.profile_selector_id
function exigence:hub/profile_selector/menu/unload_menu with storage exigence:temp

# Remove interaction
function exigence:hub/profile_selector/node/kill_interaction

# Reset id
scoreboard players set @s hub.profile_selector_id 0
scoreboard players reset @s hub.entity.room_id