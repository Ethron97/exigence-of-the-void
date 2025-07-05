# Called by each skull each tick
#   Moves skull forward and checks for player to lose

## CONSTRAINTS
#   AS skull with SkullTimer = 0

#========================================================================================================

# Move forward
execute at @s run tp @s ^ ^ ^0.1

# If in block, kill
execute at @s unless block ~ ~ ~ air run kill @s[type=item_display,tag=White,tag=DuneSkull]

# Particle
execute at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 1
