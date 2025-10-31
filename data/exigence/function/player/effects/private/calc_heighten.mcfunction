# Called by add_effect_time_card to get up-to-date heighten multiplier

## CONSTRAINTS
#   AS player

#================================================================================================

# Start at 1 (so multiplying does nothing)
scoreboard players set @s game.player.calc_heighten 1

# If Heighten, no warpaint, 2
execute if score @s game.player.heighten matches 1.. if score @s game.player.mod.war_paint matches 0 run scoreboard players set @s game.player.calc_heighten 2

# If Heighten, warpaint, 3
execute if score @s game.player.heighten matches 1.. if score @s game.player.mod.war_paint matches 1.. run scoreboard players set @s game.player.calc_heighten 3
