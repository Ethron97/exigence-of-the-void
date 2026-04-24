# Called as new shard to handle functions

## CONSTRAINTS
#   AS shard item

## INPUT
#   SCORE #compare node.property.object_level

#====================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 2 0.5

# If treasure debug on, glow coin
execute if data storage exigence:debug {treasure:1} run data modify entity @s Glowing set value true

# Copy object level
scoreboard players operation @s game.entity.object_level = #compare node.property.object_level

tag @s remove NewResonance
