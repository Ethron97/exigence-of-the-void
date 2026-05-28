# Summon new wandering monster for maze trial

## CONSTRAINTS
#   AT location

## INPUT
#   FLOAT[] Rotation
#   INT Speed
#   INT Direction   0 = east, 1 = south, 2 = west, 3 = north
#   STR Type, entity type. Zombie or skeleton


#====================================================================================================

$execute align xyz run summon $(Type) ~0.5 ~ ~0.5 {Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["EyeTrialSetup","Monster","NewMonster"],Rotation:$(Rotation)}

# Speed should not change once set
$scoreboard players set #set trial.object.speed $(Speed)
$scoreboard players set #set trial.object.direction $(Direction)

# Set data; Removes local tag
#   INPUT: #set trial.object.speed
#          #set trial.object.direction
execute as @e[type=#exigence:eye_trial,tag=NewMonster,distance=..1] run function exigence:door/vault/eye/trial/monster/new_data

# Make noise
execute as @e[type=#exigence:eye_trial,tag=NewMonster,distance=..1] run function exigence:door/vault/eye/trial/monster/private/make_noise