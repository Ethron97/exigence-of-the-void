# All functionality for assigning a new player node

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

#=============================================================================================================

## VALIDATE
execute unless predicate exigence:dimension/location/profile_data run tellraw @s {text:"Not in exigence:profile_data, aborting",color:"red"}
execute unless predicate exigence:dimension/location/profile_data run return 1

# Call function to locate the next available slot to place a node (tps NewPlayerNodeMarker to position)
execute unless entity @e[distance=..1000,type=marker,tag=NewPlayerNodeMarker] run summon minecraft:marker 1.5 1.0 2.5 {Tags:["NewPlayerNodeMarker"]}
tp @e[distance=..1000,type=marker,tag=NewPlayerNodeMarker] 1.5 1.0 2.5
execute positioned 1.5 1.0 2.5 as @e[distance=..1,type=marker,tag=NewPlayerNodeMarker] at @s run function exigence:profile/player_node/locate_next_player_slot

# Generate player id
function exigence:profile/player_node/generate_id

# Summon player head
loot spawn 0.5 1.0 2.5 loot exigence:get_player_head

# Summon new node at position and handle data assignmets
execute at @e[distance=..1000,type=marker,tag=NewPlayerNodeMarker] run setblock ~ ~ ~ diamond_block
execute at @e[distance=..1000,type=marker,tag=NewPlayerNodeMarker] run function exigence:profile/player_node/summon_player_node

# Kill item
execute positioned 0.5 1.0 2.5 run kill @n[distance=..1,type=minecraft:item]

# Remove temp marker
kill @e[distance=..1000,type=marker,tag=NewPlayerNodeMarker]

# Enable trigger
scoreboard players set @s MyPlayerID 0
scoreboard players enable @s MyPlayerID

# Initialize settings
function exigence:profile/player_node/new/initialize_settings
