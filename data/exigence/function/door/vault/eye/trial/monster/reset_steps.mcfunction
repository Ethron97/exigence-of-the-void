# Reset steps score based on speed

## CONSTRAINTS
#   AS monster

#==============================================================================================================

# DEBUG
#say Reset steps

# Eye steps * eye increment = 1 block exactly

execute if score @s EyeSpeed matches 1 run scoreboard players set @s EyeSteps 20
execute if score @s EyeSpeed matches 2 run scoreboard players set @s EyeSteps 10
execute if score @s EyeSpeed matches 4 run scoreboard players set @s EyeSteps 5
