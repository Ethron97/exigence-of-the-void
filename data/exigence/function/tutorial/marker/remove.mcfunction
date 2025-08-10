# Kills the nearest tutorial marker (and possibly display) within 1 block

## CONSTRAINTS
#   AT location

#=============================================================================================================

kill @e[distance=..2,type=block_display,tag=TutorialMarkerGlow]
kill @e[distance=..2,type=marker,tag=TutorialMarker]
kill @e[distance=..2,type=text_display,tag=TutorialMarkerID]
