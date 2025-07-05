# Summon new wandering monster for maze trial

## CONSTRAINTS
#   AT location

## INPUT
#   FLOAT[] Rotation
#   INT Speed
#   INT Direction   0 = east, 1 = south, 2 = west, 3 = north
#   STR Type, entity type. Zombie or skeleton


#=============================================================================================================

$summon $(Type) ~ ~ ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["EyeTrialSetup","Monster","NewMonster"],Rotation:$(Rotation)}

# Speed should not change once set
$scoreboard players set @e[type=#exigence:eye_trial,tag=NewMonster] EyeSpeed $(Speed)
$scoreboard players set @e[type=#exigence:eye_trial,tag=NewMonster] EyeDirection $(Direction)
execute as @e[type=#exigence:eye_trial,tag=NewMonster] run function exigence:door/vault/eye/trial/monster/reset_steps

# Frozen cooldown
scoreboard players set @e[type=#exigence:eye_trial,tag=NewMonster] TrialTimer 60

# Initialize turn
execute as @e[type=#exigence:eye_trial,tag=NewMonster] at @s run function exigence:door/vault/eye/trial/monster/turn

# Particles
execute at @e[type=#exigence:eye_trial,tag=NewMonster] run function exigence:door/vault/eye/trial/monster/particles

# Remove local tag
tag @e[type=#exigence:eye_trial,tag=NewMonster] remove NewMonster
