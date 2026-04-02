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
execute in exigence:profile_data run function exigence:profile/profile_node/load/try_chest_to_data

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

# Returns: #room_type Temp and #room_id Temp
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare profile.node.player_id run function exigence:profile/player_node/get/room_type

# Inputting:
function exigence:profile/profile_node/load/load_chests_to_waiting

# Try send Message:
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare profile.node.player_id run function exigence:profile/player/try_inform_chest_wait_over

# Prevent double loading:
scoreboard players set #loaded_to_waiting Temp 1