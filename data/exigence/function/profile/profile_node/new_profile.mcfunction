# All functionality for assigning a new profile node

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   SCORE #compare profile.node.slot_id
#   SCORE #difficulty Temp
#   SCORE #creating_coop Temp (Optional)
#   SCORE #coop_profile_id Temp (Optional)

#====================================================================================================

#say (D3) Try new profile

## VALIDATE
execute unless dimension exigence:profile_data run return run tellraw @s {text:"Not in exigence:profile_data, aborting",color:"red"}

# If there are already 1008 total, fail
execute if score #sequence profile.player.profile_id matches 1008.. run return run tellraw @s {text:"Maximum number of TOTAL profiles reached (1008)",color:"red"}

# If this player already has more than 5, fail
scoreboard players set #temp Temp 0
scoreboard players operation #compare profile.node.player_id = @s career.player_id
execute as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.slot_id=1..},tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id run scoreboard players add #temp Temp 1
execute if score #temp Temp matches 5.. run return run tellraw @s {text:"Maximum number of profiles reached for this player (5)",color:"red"}

#----------------------------------------------------------------------------------------------------

#say (D3) Creating new profile

# Increase number of profiles created
scoreboard players add @s career.profiles_created 1

# Call function to locate the next available slot to place a node (tps NewProfileNodeMarker to position)
execute unless entity @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=NewProfileNodeMarker,limit=1] run summon minecraft:marker 0.5 5.0 0.5 {Tags:["NewProfileNodeMarker"],CustomName:{text:"Marker | NewProfileNodeMarker"}}
#   Initialize position
tp @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=NewProfileNodeMarker,limit=1] 0.5 5.0 0.5
#   Iterative over possible positions to find first empty
execute as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=NewProfileNodeMarker,limit=1] at @s run function exigence:profile/profile_node/new/locate_next_profile_slot

# Generate profile id
function exigence:profile/profile_node/new/generate_id

# Summon player head
loot spawn 0.5 1.0 2.5 loot exigence:get_player_head

# Summon new node at position and handle data assignmets
execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=NewProfileNodeMarker,limit=1] run function exigence:profile/profile_node/new/summon_profile_node

# Kill item
kill @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,type=minecraft:item]

# Remove temp marker
kill @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=NewProfileNodeMarker,limit=1]
