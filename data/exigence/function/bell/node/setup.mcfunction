# Called by setup_bells

## CONSTRAINTS
#   AS BellNode

# ===============================================================================================================

# Deactivate all bells
function exigence:bell/node/deactivate

# Reset all "Random" scores
scoreboard players set @s Random 0

# Activate if on active levels
#   80% to be active
execute if score @s ObjectLevel <= Difficulty DungeonRun store result score @s Random run random value 1..5
execute if score @s Random matches 1..4 run function exigence:bell/node/activate
