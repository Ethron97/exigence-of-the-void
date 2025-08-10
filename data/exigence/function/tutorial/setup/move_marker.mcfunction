# Moves the nearest tutorial marker to your current position

## CONSTRAINTS
#   AS player

#=============================================================================================================

execute at @s align xyz as @n[distance=..30,type=minecraft:marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/moving
