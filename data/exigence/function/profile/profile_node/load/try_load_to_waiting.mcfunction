# Called from save/try_data_to_chest if at least one other coop is waiting

## CONSTRAINTS
#   AS profile node

## INPUT/OUTPUT
#   SCORE #loaded_to_waiting Temp

#====================================================================================================
execute if score #loaded_to_waiting Temp matches 1.. run return fail
#----------------------------------------------------------------------------------------------------

say Try load to waiting

# Load chests to data
execute in exigence:profile_data positioned 8 128 8 run function exigence:profile/profile_node/load/try_chest_to_data

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

# Returns: #room_type Temp and #room_id Temp
execute in exigence:profile_data positioned 8 0 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s profile.node.player_id = #compare profile.node.player_id run function exigence:profile/player_node/get/room_type

# Inputting:
function exigence:profile/profile_node/load/load_chests_to_waiting

# Try send Message:
execute in exigence:profile_data positioned 8 0 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s profile.node.player_id = #compare profile.node.player_id run function exigence:profile/player/try_inform_chest_wait_over

# Prevent double loading:
scoreboard players set #loaded_to_waiting Temp 1