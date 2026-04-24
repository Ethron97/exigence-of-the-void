# Kills the nearest tutorial marker (and possibly display) within 1 block

## CONSTRAINTS
#   AT location

#====================================================================================================

kill @e[type=minecraft:block_display,tag=TutorialMarkerGlow,distance=..2]
kill @e[type=minecraft:marker,tag=TutorialMarker,distance=..2]
kill @e[type=minecraft:text_display,tag=TutorialMarkerID,distance=..2]
