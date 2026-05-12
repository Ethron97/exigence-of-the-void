# Pick direction to turn

## CONSTRAINTS
#   AS monster

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Turning

# Randomize direction
execute at @s run function exigence:door/vault/eye/trial/monster/random_direction

# Copy direction
scoreboard players operation @s EyeDirection = #random Random

# Turn facing new direction
execute if score @s EyeDirection matches 0 at @s run tp @s ~ ~ ~ -90 0
execute if score @s EyeDirection matches 1 at @s run tp @s ~ ~ ~ 0 0
execute if score @s EyeDirection matches 2 at @s run tp @s ~ ~ ~ 90 0
execute if score @s EyeDirection matches 3 at @s run tp @s ~ ~ ~ 180 0
