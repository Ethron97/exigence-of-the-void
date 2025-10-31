# Update cooldown of ravager glass marker

## CONSTRAINTS
#   AS Marker (RavagerGlass)

#=======================================================================================================

# Reduce cooldown
scoreboard players remove @s game.entity.ravager_glass.cooldown 1

# If cooldown reaches 0, replace ravager glass
execute if score @s game.entity.ravager_glass.cooldown matches ..0 run function exigence:game/other/ravager_glass/respawn_ravager_glass
