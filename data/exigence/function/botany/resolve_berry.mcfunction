# Call this only if berry queue > 0; remove and grow on berry

## CONSTRAINTS
#   AS a random active, living player

#====================================================================================================

scoreboard players remove berry.queue game.dungeon.temp 1

# If FinalHarvest active, skip
execute if score mod.final_harvest game.modifiers matches 1 run return 1
#----------------------------------------------------------------------------------------------------

# By default, grow level on player's active level
scoreboard players operation growth.level game.dungeon.temp = @s game.player.active_level

execute in minecraft:overworld run function exigence:botany/grow_bush
