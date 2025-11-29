# All functionality for assigning a new profile node

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   #compare profile.node.slot_id

#=============================================================================================================

##say Try new profile

## VALIDATE
execute unless predicate exigence:dimension/location/profile_data run tellraw @s {text:"Not in exigence:profile_data, aborting",color:"red"}
execute unless predicate exigence:dimension/location/profile_data run return 1

# If there are already 1008 total, fail
execute if score #sequence profile.player.profile_id matches 1008.. run tellraw @s {text:"Maximum number of TOTAL profiles reached (1008)",color:"red"}
execute if score #sequence profile.player.profile_id matches 1008.. run return 1

# If this player already has more than 5, fail
scoreboard players set #temp Temp 0
scoreboard players operation #compare profile.node.player_id = @s career.player_id
execute as @e[distance=..1000,tag=ProfileNode,scores={profile.node.slot_id=1..}] if score @s profile.node.player_id = #compare profile.node.player_id run scoreboard players add #temp Temp 1
execute if score #temp Temp matches 5.. run tellraw @s {text:"Maximum number of profiles reached for this player (5)",color:"red"}
execute if score #temp Temp matches 5.. run return 1

#=============================================================================================================

#say Creating new profile

# Increase number of profiles created
scoreboard players add @s career.profiles_created 1

# Call function to locate the next available slot to place a node (tps NewProfileNodeMarker to position)
execute unless entity @e[distance=..1000,type=marker,tag=NewProfileNodeMarker] run summon minecraft:marker 0.5 5.0 0.5 {Tags:["NewProfileNodeMarker"]}
tp @e[distance=..1000,type=marker,tag=NewProfileNodeMarker] 0.5 5.0 0.5
execute positioned 0.5 5.0 0.5 as @e[distance=..1,type=marker,tag=NewProfileNodeMarker] at @s run function exigence:profile/profile_node/new/locate_next_profile_slot

# Generate profile id
function exigence:profile/profile_node/new/generate_id

# Summon player head
loot spawn 0.5 1.0 2.5 loot exigence:get_player_head

# Summon new node at position and handle data assignmets
execute at @e[distance=..1000,type=marker,tag=NewProfileNodeMarker] run setblock ~ ~-1 ~ gold_block
execute at @e[distance=..1000,type=marker,tag=NewProfileNodeMarker] run function exigence:profile/profile_node/new/summon_profile_node

# Kill item
execute positioned 0.5 1.0 2.5 run kill @n[distance=..1,type=minecraft:item]

# Remove temp marker
kill @e[distance=..1000,type=marker,tag=NewProfileNodeMarker]
