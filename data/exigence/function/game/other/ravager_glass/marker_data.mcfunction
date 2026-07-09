# Handle data of new ravager glass marker

## CONSTRAINTS
#   AS Marker (NewRavagerGlass)

#====================================================================================================

scoreboard players operation @s game.entity.ravager_glass.cooldown = cooldown.limit game.entity.ravager_glass.cooldown

# Remove local tag
tag @s remove NewRavagerGlass
