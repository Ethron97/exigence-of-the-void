# Called by variance/setup_variance

## CONSTRAINTS
#   AS VarianceNode

#=============================================================================================================

# Reset NodeState score
scoreboard players set @s NodeState 0

# Reset active tag
tag @s remove Active
tag @s remove Setup

# Activate all variance nodes on or below difficulty level
execute if score @s ObjectLevel <= Difficulty DungeonRun run tag @s add Active
execute if score @s ObjectLevel <= Difficulty DungeonRun run tag @s add Setup
