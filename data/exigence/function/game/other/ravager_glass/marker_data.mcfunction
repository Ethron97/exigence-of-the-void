# Handle data of new ravager glass marker

## CONSTRAINTS
#   AS Marker (NewRavagerGlass)

#=======================================================================================================

scoreboard players operation @s game.entity.ravager_glass.cooldown = #RavagerGlassCooldownLimit game.entity.ravager_glass.cooldown

# Playsound of glass breaking
execute at @s run playsound minecraft:block.glass.break ambient @a[scores={career.settings.ravager_glass_break=1}] ~ ~ ~ 0.5 1

# Remove local tag
tag @s remove NewRavagerGlass
