# All functionality for assigning a new player node

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

#====================================================================================================
execute unless dimension exigence:profile_data run return run tellraw @a {text:"Not in exigence:profile_data, aborting",color:"red"}
#----------------------------------------------------------------------------------------------------

# Call function to locate the next available slot to place a node (tps NewPlayerNodeMarker to position)
#   Ensure that (one) NewPlayerNodeMarker exists
execute unless entity @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:marker,tag=NewPlayerNodeMarker] run summon minecraft:marker 1.5 1.0 33.5 {Tags:["NewPlayerNodeMarker"],CustomName:{text:"Marker | NewPlayer"}}
#   Reset position to start
tp @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:marker,tag=NewPlayerNodeMarker] 1.5 1.0 33.5
#   Iterate until we find an open slot
execute as @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:marker,tag=NewPlayerNodeMarker] at @s run function exigence:profile/player_node/new/locate_next_player_slot

# Generate player id
function exigence:profile/player_node/new/generate_id

# Summon player head
loot spawn 0.5 1.5 32.5 loot exigence:get_player_head

# Summon new node at position and handle data assignmets
execute at @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:marker,tag=NewPlayerNodeMarker] run function exigence:profile/player_node/new/summon_player_node

# Kill item
kill @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:item]

# Remove temp marker
kill @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:marker,tag=NewPlayerNodeMarker]

# Initialize settings
function exigence:profile/player_node/new/initialize_settings
