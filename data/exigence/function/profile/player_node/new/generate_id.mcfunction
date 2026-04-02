# Generate a new unique player ID

## CONSTRAINTS
#   AS player

#====================================================================================================

#say Generate player id

# Generate random 4 digit number
execute store result score #sequence career.player_id run random value 1000..9999

# Ensure that no other nodes have this number
scoreboard players set #temp Temp 0
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #sequence career.player_id run scoreboard players set #temp Temp 1

# If it doesn't already exist, assign to player.
execute if score #temp Temp matches 0 run scoreboard players operation @s career.player_id = #sequence career.player_id
# If it does already exist, iterate.
execute if score #temp Temp matches 1 run function exigence:profile/player_node/new/generate_id
