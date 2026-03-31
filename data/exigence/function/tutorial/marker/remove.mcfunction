# Kills the nearest tutorial marker (and possibly display) within 1 block

## CONSTRAINTS
#   AT location

#====================================================================================================

kill @e[type=block_display,tag=TutorialMarkerGlow,distance=..2]
kill @e[type=marker,tag=TutorialMarker,distance=..2]
kill @e[type=text_display,tag=TutorialMarkerID,distance=..2]
