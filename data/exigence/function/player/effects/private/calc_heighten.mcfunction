# Called by add_effect_time_card to get up-to-date heighten multiplier

## CONSTRAINTS
#   AS player

#================================================================================================

# Start at 1 (so multiplying does nothing)
scoreboard players set @s mod_calc_Heighten 1

# If Heighten, no warpaint, 2
execute if score @s mod_Heighten matches 1.. if score @s mod_WarPaint matches 0 run scoreboard players set @s mod_calc_Heighten 2

# If Heighten, warpaint, 3
execute if score @s mod_Heighten matches 1.. if score @s mod_WarPaint matches 1.. run scoreboard players set @s mod_calc_Heighten 3
