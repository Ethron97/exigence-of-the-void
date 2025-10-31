# Handle the data/location of the newly summoned card

## CONSTRAINTS
#   AS Item NCS

#==========================================================================================================

# Randomize which room the drop spawns in
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 run tp @s -449.5 62.0 -202.5
execute if score #random Random matches 2 run tp @s -479.5 62.0 -201.5
execute if score #random Random matches 3 run tp @s -481.5 62.0 -194.5
execute if score #random Random matches 4 run tp @s -462.5 62.00 -203.5

tag @s add ForgottenExperiment

# Give glow because we keep forgetting them
scoreboard players set @s game.entity.glow_remaining 999999

# Green team
team join Botany @s

# Prevent despawn
data merge entity @s {Age:-32768}

# Remove New Card Summon tag
tag @s remove NCS
