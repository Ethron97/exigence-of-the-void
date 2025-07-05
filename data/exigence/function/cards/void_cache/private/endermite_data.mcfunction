# Effects/data for newly spawned endermite

## CONSTRAINTS
#   AS Endermite

#==========================================================================================================

# Initialize life (in seconds)
execute store result score @s EndermiteTimer run random value 100..150

# Give effects
effect give @s speed infinite 1 true
effect give @s strength infinite 0 true

# Reproduce slow on Radiant difficulty
execute if score ProfileDifficulty DungeonRun matches 0 run attribute @s movement_speed modifier add exigence:enemy_slow -0.2 add_multiplied_base

# Remove local tag
tag @s remove NewMite
