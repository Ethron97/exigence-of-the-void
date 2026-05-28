# Pick direction to turn

## CONSTRAINTS
#   AS monster

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Turning

# Randomize direction
#   OUTPUT: #random Random
execute at @s run function exigence:door/vault/eye/trial/monster/random_direction

# Copy direction
scoreboard players operation @s trial.object.direction = #random Random

# Turn facing new direction
execute if score @s trial.object.direction matches 0 at @s run tp @s ~ ~ ~ -90 0
execute if score @s trial.object.direction matches 1 at @s run tp @s ~ ~ ~ 0 0
execute if score @s trial.object.direction matches 2 at @s run tp @s ~ ~ ~ 90 0
execute if score @s trial.object.direction matches 3 at @s run tp @s ~ ~ ~ 180 0

# Make sound (33%)
execute store result score #random Random run random value 0..2
execute if score #random Random matches 0 run function exigence:door/vault/eye/trial/monster/private/make_noise