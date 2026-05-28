# Move forward

## CONSTRAINTS
#   AS monster, score trial.object.steps > 0

#====================================================================================================

# Reduce steps
scoreboard players remove @s trial.object.steps 1

# Move forward based on speed
#   Increment must go into 1.0 evenly
execute if score @s trial.object.speed matches 1 at @s run teleport @s ^ ^ ^0.05
execute if score @s trial.object.speed matches 2 at @s run teleport @s ^ ^ ^0.1
execute if score @s trial.object.speed matches 4 at @s run teleport @s ^ ^ ^0.2

# If Eye steps is 0 after moving, change direction if intersection (marked by waxed_exposed_cut_copper)
execute if score @s trial.object.steps matches 0 at @s if block ~ ~-1 ~ minecraft:waxed_exposed_cut_copper run function exigence:door/vault/eye/trial/monster/turn
execute if score @s trial.object.steps matches 0 run function exigence:door/vault/eye/trial/monster/reset_steps
