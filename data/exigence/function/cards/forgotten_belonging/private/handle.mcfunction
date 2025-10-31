# Handle the data/location of the newly summoned card

## CONSTRAINTS
#   AS Item NCS

#==========================================================================================================

# Randomize which room the drop spawns in
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 run tp @s -339.5 13.0 -190.5
execute if score #random Random matches 2 run tp @s -328.5 13.1 -191.5
execute if score #random Random matches 3 run tp @s -318.5 13.0 -192.5
execute if score #random Random matches 4 run tp @s -323.5 12.5 -203.0

tag @s add ForgottenBelonging

# Give glow because we keep forgetting them
scoreboard players set @s game.entity.glow_remaining 999999

# Green team
team join Botany @s

# Prevent despawn
data merge entity @s {Age:-32768}

# Remove New Card Summon tag
tag @s remove NCS
