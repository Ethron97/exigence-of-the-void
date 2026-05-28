# Summon new wandering monster for maze trial

## CONSTRAINTS
#   AS new monster

## INPUT
#   SCORE #set trial.object.speed
#   SCORE #set trial.object.direction Direction   0 = east, 1 = south, 2 = west, 3 = north

#====================================================================================================

# Speed should not change once set
scoreboard players operation @s trial.object.speed = #set trial.object.speed
scoreboard players operation @s trial.object.direction = #set trial.object.direction

function exigence:door/vault/eye/trial/monster/reset_steps

# Frozen cooldown
#scoreboard players set @s trial.object.timer 60
execute store result score @s trial.object.timer run random value 50..70

# Initialize turn
execute at @s run function exigence:door/vault/eye/trial/monster/turn

# Particles
execute at @s run function exigence:door/vault/eye/trial/monster/particles

# Remove local tag
tag @s remove NewMonster
