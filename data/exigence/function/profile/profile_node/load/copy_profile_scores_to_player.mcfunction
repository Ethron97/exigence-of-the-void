# Copy profile specific scores to player, mostly for convienience (faster queries).

## CONSTRAINTS
#   AS player
#   AT profile node

## OUTPUT
#   SCORE #online Temp

#====================================================================================================
execute unless entity @s[type=player] run return run say (C) Tried to copy profile scores to a non player?
execute unless entity @n[tag=ProfileNode,distance=..0.1] run return run say (C) Tried to copy profile scores from not AT profile node?
#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 2.. run say (D2 Profile) Copy profile scores to player

scoreboard players operation @s profile.player.profile_id = @n[tag=ProfileNode,distance=..0.1] profile.node.profile_id
scoreboard players operation @s profile.player.profile_difficulty = @n[tag=ProfileNode,distance=..0.1] profile.node.profile_difficulty
scoreboard players operation @s profile.player.coop_profile_index = @n[tag=ProfileNode,distance=..0.1] profile.node.coop_profile_index
scoreboard players operation @s profile.player.coop_profile_id = @n[tag=ProfileNode,distance=..0.1] profile.node.coop_profile_id

# Enable trigger(s)
scoreboard players enable @s ProfileStats

scoreboard players set #online Temp 1