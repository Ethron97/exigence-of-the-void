# Cause the next closest non-dropped

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# DEBUG
#say Next token


# If node that was marked as LastDropped also has tag "Checkpoint"
execute as @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped,tag=Checkpoint] run function exigence:tutorial/flow/last_dropped_fallback

execute in exigence:tutorial at @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] \
as @n[distance=..100,type=marker,tag=TutorialMarker,tag=!Dropped] run function exigence:tutorial/marker/tutorial_token

# Base case: First node
execute in exigence:tutorial unless entity @e[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] \
at @n[distance=..1000,type=marker,tag=TutorialMarker,scores={TutorialMarkerID=6}] \
as @n[distance=..100,type=marker,tag=TutorialMarker,tag=!Dropped] run function exigence:tutorial/marker/tutorial_token

# Update debug colors
execute as @e[type=marker,tag=TutorialMarker,distance=..1000] run function exigence:tutorial/marker/private/update_debug_color
