# Move forward

## CONSTRAINTS
#   AS monster, score EyeSteps > 0

#============================================================================================================

# Reduce steps
scoreboard players remove @s EyeSteps 1

# Move forward based on speed
#   Increment must go into 1.0 evenly
execute if score @s EyeSpeed matches 1 at @s run teleport @s ^ ^ ^0.05
execute if score @s EyeSpeed matches 2 at @s run teleport @s ^ ^ ^0.1
execute if score @s EyeSpeed matches 4 at @s run teleport @s ^ ^ ^0.2

# If Eye steps is 0 after moving, change direction if intersection (marked by glaze)
execute if score @s EyeSteps matches 0 at @s if block ~ 126 ~ minecraft:blue_glazed_terracotta run function exigence:door/vault/eye/trial/monster/turn
execute if score @s EyeSteps matches 0 run function exigence:door/vault/eye/trial/monster/reset_steps
