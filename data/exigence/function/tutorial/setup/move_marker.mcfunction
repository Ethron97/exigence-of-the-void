# Moves the nearest tutorial marker to your current position

## CONSTRAINTS
#   AS player

#====================================================================================================

execute at @s align xyz as @n[type=minecraft:marker,tag=TutorialMarker,distance=..30] run function exigence:tutorial/marker/private/moving
