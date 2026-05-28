# Reset steps score based on speed

## CONSTRAINTS
#   AS monster

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Reset steps

# Eye steps * eye increment = 1 block exactly

execute if score @s trial.object.speed matches 1 run scoreboard players set @s trial.object.steps 20
execute if score @s trial.object.speed matches 2 run scoreboard players set @s trial.object.steps 10
execute if score @s trial.object.speed matches 4 run scoreboard players set @s trial.object.steps 5
