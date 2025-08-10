# Cause the next closest non-dropped

#=============================================================================================================

# DEBUG
#say Next token

execute in exigence:tutorial at @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] \
as @e[distance=..100,type=marker,tag=TutorialMarker,tag=!Dropped,sort=nearest,limit=1] run function exigence:tutorial/marker/tutorial_token

# Base case: First node
execute in exigence:tutorial unless entity @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] \
at @e[distance=..1000,type=marker,tag=TutorialMarker,scores={TutorialMarkerID=6}] \
as @e[distance=..100,type=marker,tag=TutorialMarker,tag=!Dropped,sort=nearest,limit=1] run function exigence:tutorial/marker/tutorial_token

# Update debug colors
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/update_debug_color

