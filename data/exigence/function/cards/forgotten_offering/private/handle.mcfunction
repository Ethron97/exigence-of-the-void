# Handle the data/location of the newly summoned card

## CONSTRAINTS
#   AS Item NCS

#==========================================================================================================

# Randomize which room the drop spawns in
execute store result score random Random run random value 1..7
execute if score random Random matches 1 run tp @s -329.5 154.0 -61.5
execute if score random Random matches 2 run tp @s -440.5 169.0 -34.5
execute if score random Random matches 3 run tp @s -411.5 154.0 -50.5
execute if score random Random matches 4 run tp @s -441.5 154.0 -37.5
execute if score random Random matches 5 run tp @s -441.5 154.0 -49.5
execute if score random Random matches 6 run tp @s -441.5 154.0 -61.5
execute if score random Random matches 7 run tp @s -441.5 154.0 -73.5

tag @s add ForgottenOffering

# Give glow because we keep forgetting them
scoreboard players set @s GlowRemaining 999999

# Green team
team join Botany @s

# Prevent despawn
data merge entity @s {Age:-32768}

# Remove New Card Summon tag
tag @s remove NCS
