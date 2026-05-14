# Handle data of new ravager glass marker

## CONSTRAINTS
#   AS Marker (NewRavagerGlass)

#====================================================================================================

scoreboard players operation @s game.entity.ravager_glass.cooldown = cooldown.limit game.entity.ravager_glass.cooldown

# Playsound of glass breaking
execute at @s as @a[tag=Tutorial] unless score @s career.settings.ravager_glass_break matches 0 run playsound minecraft:block.glass.break ambient @s ~ ~ ~ 0.5 1

# Remove local tag
tag @s remove NewRavagerGlass
