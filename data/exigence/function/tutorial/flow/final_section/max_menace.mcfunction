# called when tutorial reaches max menace for first time

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# Enable red vinette
worldborder warning distance 300000

# Playsound
playsound minecraft:block.end_portal.spawn hostile @a 0 100 0 1000 1

# Set bossbar color to red, and 100%
bossbar set exigence:tutorial_deck color red
bossbar set exigence:tutorial_deck value 100

scoreboard players set MaxMenace Tutorial 1