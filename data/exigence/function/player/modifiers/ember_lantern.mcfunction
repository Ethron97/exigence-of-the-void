# Glow ember items near player

## CONSTRAINTS
#   AT player

#====================================================================================================

execute as @e[type=minecraft:item,tag=Ember,distance=..10] run scoreboard players operation @s game.entity.glow_remaining > 20 number
