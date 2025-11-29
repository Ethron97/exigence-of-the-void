# Generate a new unique profile ID

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Make sure #sequence is current the highest or higher than all existing
execute in exigence:profile_data as @e[distance=..1000,tag=ProfileNode] run scoreboard players operation #sequence profile.player.profile_id > @s profile.node.profile_id

# Then add 1 to make it unique
scoreboard players add #sequence profile.player.profile_id 1

# Assign to player
scoreboard players operation @s profile.player.profile_id = #sequence profile.player.profile_id
