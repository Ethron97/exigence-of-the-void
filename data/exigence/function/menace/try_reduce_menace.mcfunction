# Called to reduce current menace level by exactly 1
#   Cannot go below minimum
#   Cannot reduce at max menace

## CONSTRAINTS
#   AS player?
#   Not currently constraining anything, but we might add scoreboards.

# ASSUMES THAT THIS IS ONLY BEING CALLED BY LIGHTING ALTARS

#===========================================================================================================

# If max menace, return
execute if data storage exigence:dungeon {max_menace:1} run return 1

# If current menace is at or below minimum, return
execute if score Menace DungeonRun <= MinMenace DungeonRun run return 1

# Else, reduce by one
scoreboard players remove Menace DungeonRun 1
# Increase player score
scoreboard players add @p[tag=Lighting] profile.data.altar.cr.menace_reduced 1
