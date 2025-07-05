# Called by hazard/active_hazard_nodes

## CONSTRAINTS
#   AS HazardNode

#=============================================================================================================

# Reset active status 
tag @s remove Active

# Reset score
scoreboard players set @s NodeState 1

# Activate depending on the levels being played on:
execute if score @s ObjectLevel <= Difficulty DungeonRun run tag @s add Active
