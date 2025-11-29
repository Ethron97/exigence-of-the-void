# Copy profile specific scores to player, mostly for convienience.

## CONSTRAINTS
#   AS player
#   AT profile node

#=============================================================================================================

scoreboard players operation @s profile.player.profile_id = @n[distance=..0.1,tag=ProfileNode] profile.node.profile_id
scoreboard players operation @s profile.player.coop_profile_index = @n[distance=..0.1,tag=ProfileNode] profile.node.coop_profile_index
scoreboard players operation @s profile.player.coop_profile_id = @n[distance=..0.1,tag=ProfileNode] profile.node.coop_profile_id
