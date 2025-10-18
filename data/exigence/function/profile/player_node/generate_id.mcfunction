# Generate a new unique player ID

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Make sure #sequence is current the highest or higher than all existing
execute in exigence:profile_data as @e[distance=..1000,tag=PlayerNode] run scoreboard players operation #sequence profile.player_id > @s profile.node.player_id

# Then add 1 to make it unique
scoreboard players add #sequence profile.player_id 1

# Assign to player
scoreboard players operation @s profile.player_id = #sequence profile.player_id
