# Tags the active profile of the input player

## CONSTRAINTS
#   AS player

#=========================================================================================================================

# Reset active tag
execute in exigence:profile_data positioned 8 128 8 run tag @e[distance=..200,tag=ProfileNode,tag=Active] remove Active

# Store this player id for comparison
scoreboard players operation #temp Temp = @s profile.profile_id

# Assign active tag 
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,tag=ProfileNode] if score @s profile.node.profile_id = #temp Temp run tag @s add Active
