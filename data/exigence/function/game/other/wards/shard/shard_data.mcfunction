# Called as new shard to handle functions

## CONSTRAINTS
#   AS shard item

#================================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 2 0.5

# If treasure debug on, glow coin
execute if data storage exigence:debug {treasure:1} run data modify entity @s Glowing set value true

# Copy object level
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

tag @s remove NewResonance
