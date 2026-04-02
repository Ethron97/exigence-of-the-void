# Generate a new unique profile ID

## CONSTRAINTS
#   AS player

#====================================================================================================

# Make sure #sequence is current the highest or higher than all existing
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,limit=1] run scoreboard players operation #sequence profile.player.profile_id > @s profile.node.profile_id

# Then add 1 to make it unique
scoreboard players add #sequence profile.player.profile_id 1

# Assign to player
scoreboard players operation @s profile.player.profile_id = #sequence profile.player.profile_id
