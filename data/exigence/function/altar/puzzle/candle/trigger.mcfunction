# Lights this candle

## CONSTRAINTS
#   AS PuzzleCandle

#====================================================================================================

# DEBUG
#say (D3) I am Triggered

# Add triggered tag
tag @s add Triggered

# Set fire
execute at @s run setblock ~ ~ ~ minecraft:soul_fire

# Playsound
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a ~ ~ ~ 4 1

# Particles
execute at @s run particle minecraft:soul_fire_flame ~ ~0.7 ~ 0.3 0.3 0.3 0.01 10
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.3 0.3 0.01 10
execute at @s run particle minecraft:electric_spark ~ ~0.7 ~ 0.6 0.6 0.6 0.01 20
execute at @s run particle minecraft:electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 0.15 10
