# Update cooldown of ravager glass marker

## CONSTRAINTS
#   AS Marker (RavagerGlass)

#=======================================================================================================

# Reduce cooldown
scoreboard players remove @s RavagerGlassCooldown 1

# If cooldown reaches 0, replace ravager glass
execute if score @s RavagerGlassCooldown matches ..0 run function exigence:game/game_tick/ravager_glass/respawn_ravager_glass
