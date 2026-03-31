# Copy profile specific scores to player, mostly for convienience (faster queries).

## CONSTRAINTS
#   AS player
#   AT profile node

## OUTPUT
#   SCORE #online Temp

#====================================================================================================
execute unless entity @s[type=player] run return run say Tried to copy profile scores to a non player?

scoreboard players operation @s profile.player.profile_id = @n[tag=ProfileNode,distance=..0.1] profile.node.profile_id
scoreboard players operation @s profile.player.profile_difficulty = @n[tag=ProfileNode,distance=..0.1] profile.node.profile_difficulty
scoreboard players operation @s profile.player.coop_profile_index = @n[tag=ProfileNode,distance=..0.1] profile.node.coop_profile_index
scoreboard players operation @s profile.player.coop_profile_id = @n[tag=ProfileNode,distance=..0.1] profile.node.coop_profile_id

# Enable trigger(s)
scoreboard players enable @s ProfileStats

scoreboard players set #online Temp 1