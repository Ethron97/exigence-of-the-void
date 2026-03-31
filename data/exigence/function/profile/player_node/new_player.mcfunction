# All functionality for assigning a new player node

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

#====================================================================================================

## VALIDATE
execute unless predicate exigence:dimension/location/profile_data run tellraw @a {text:"Not in exigence:profile_data, aborting",color:"red"}
execute unless predicate exigence:dimension/location/profile_data run return 1
#----------------------------------------------------------------------------------------------------

# Call function to locate the next available slot to place a node (tps NewPlayerNodeMarker to position)
execute unless entity @n[type=marker,tag=NewPlayerNodeMarker,distance=..1000] run summon minecraft:marker 1.5 1.0 2.5 {Tags:["NewPlayerNodeMarker"],CustomName:{text:"Marker | NewPlayer"}}
tp @n[type=marker,tag=NewPlayerNodeMarker,distance=..1000] 1.5 1.0 2.5
execute positioned 1.5 1.0 2.5 as @n[type=marker,tag=NewPlayerNodeMarker,distance=..1] at @s run function exigence:profile/player_node/new/locate_next_player_slot

# Generate player id
function exigence:profile/player_node/new/generate_id

# Summon player head
loot spawn 0.5 1.0 2.5 loot exigence:get_player_head

# Summon new node at position and handle data assignmets
execute at @n[type=marker,tag=NewPlayerNodeMarker,distance=..1000] run setblock ~ ~ ~ diamond_block
execute at @n[type=marker,tag=NewPlayerNodeMarker,distance=..1000] run function exigence:profile/player_node/new/summon_player_node

# Kill item
execute positioned 0.5 1.0 2.5 run kill @n[type=minecraft:item,distance=..1]

# Remove temp marker
kill @n[type=marker,tag=NewPlayerNodeMarker,distance=..1000]

# Enable trigger
scoreboard players enable @s MyPlayerID

# Initialize settings
function exigence:profile/player_node/new/initialize_settings
