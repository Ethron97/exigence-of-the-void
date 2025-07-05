# Call this only if berry queue > 0; remove and grow on berry

## CONSTRAINTS
#   AS a random active, living player

#======================================================================================================

scoreboard players remove BerryQueue DungeonRun 1

# If FinalHarvest active, skip
execute if score FinalHarvest Modifiers matches 1 run return 1

# By default, grow level on active level
scoreboard players operation GrowthLevel DungeonRun = @s ActiveLevel

function exigence:botany/grow_bush
