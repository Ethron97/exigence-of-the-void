# Reset ALL profiles and ALL player nodes

## CONSTRAINTS
#   IN exigence:profile_data

#====================================================================================================
# !!! CAUTION !!!
#====================================================================================================
execute unless dimension exigence:profile_data run return run say (C) profile/profile_cleanup not run in profile_data dimension
#====================================================================================================

# Remove entites
#   Player nodes
kill @e[x=0,y=0,z=32,dx=15,dy=15,dz=15]
#   Profile nodes
kill @e[tag=ProfileNode,distance=..1000]

# Reset scoreboards
scoreboard players reset * career.player_id
scoreboard players reset * profile.player.profile_id
scoreboard players reset * profile.node.player_id
scoreboard players reset * profile.node.profile_id
scoreboard players reset * profile.node.local_profile_id
scoreboard players reset * profile.node.slot_id

# Reset sequence(s)
scoreboard players set #sequence career.player_id 0
scoreboard players set #sequence profile.player.profile_id 0

# Clear blocks
#   Profile nodes
fill 1 1 2 15 1 15 air
fill 0 4 0 15 128 15 air
fill 0 129 0 15 255 15 air
#   Player nodes
fill 1 1 33 14 1 46 air