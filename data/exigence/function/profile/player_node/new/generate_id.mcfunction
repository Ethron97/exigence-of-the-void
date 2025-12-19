# Generate a new unique player ID

## CONSTRAINTS
#   AS player

#=============================================================================================================

#say Generate player id

# Generate random 4 digit number
execute store result score #sequence career.player_id run random value 1000..9999

# Ensure that no other nodes have this number
scoreboard players set #temp Temp 0
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..24,tag=PlayerNode] if score @s profile.node.player_id = #sequence career.player_id run scoreboard players set #temp Temp 1

# If it doesn't already exist, assign to player.
execute if score #temp Temp matches 0 run scoreboard players operation @s career.player_id = #sequence career.player_id
# If it does already exist, iterate.
execute if score #temp Temp matches 1 run function exigence:profile/player_node/new/generate_id

# OLD
# Make sure #sequence is current the highest or higher than all existing
#execute in exigence:profile_data as @e[distance=..1000,tag=PlayerNode] run scoreboard players operation #sequence career.player_id > @s profile.node.player_id

# Then add 1 to make it unique
#scoreboard players add #sequence career.player_id 1

# Assign to player
#scoreboard players operation @s career.player_id = #sequence career.player_id
