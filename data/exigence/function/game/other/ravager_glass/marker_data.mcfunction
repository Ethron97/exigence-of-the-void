# Handle data of new ravager glass marker

## CONSTRAINTS
#   AS Marker (NewRavagerGlass)

#====================================================================================================

scoreboard players operation @s game.entity.ravager_glass.cooldown = cooldown.limit game.entity.ravager_glass.cooldown

# Playsound of glass breaking (force if tutorial)
execute at @s[tag=Tutorial] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 0.5 1
execute at @s[tag=!Tutorial] unless score @s career.settings.ravager_glass_break matches 0 run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 0.5 1

# Remove local tag
tag @s remove NewRavagerGlass
