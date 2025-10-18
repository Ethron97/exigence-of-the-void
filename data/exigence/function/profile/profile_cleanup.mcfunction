# Reset ALL profiles and ALL player nodes

## CONSTRAINTS
#   IN exigence:profile_data

#=============================================================================================================
# !!! CAUTION !!!
#=============================================================================================================

# Remove entites
kill @e[distance=..1000,tag=PlayerNode]
kill @e[distance=..1000,tag=ProfileNode]

# Reset scoreboards
scoreboard players reset * profile.player_id
scoreboard players reset * profile.profile_id
scoreboard players reset * profile.node.player_id
scoreboard players reset * profile.node.profile_id
scoreboard players reset * profile.node.local_profile_id

# Reset sequence(s)
scoreboard players set #sequence profile.player_id 0
scoreboard players set #sequence profile.profile_id 0

# Clear blocks
fill 1 1 2 15 1 15 air
fill 0 4 0 15 128 15 air
fill 0 129 0 15 255 15 air
