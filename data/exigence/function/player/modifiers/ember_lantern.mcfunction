# Glow ember items near player

## CONSTRAINTS
#   AT player

#=============================================================================================================

execute as @e[distance=..10,type=minecraft:item,tag=Ember] run scoreboard players operation @s GlowRemaining > 20 number
