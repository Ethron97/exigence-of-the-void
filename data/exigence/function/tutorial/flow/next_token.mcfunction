# Cause the next closest non-dropped

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# DEBUG
#say (D3) Next token


# If node that was marked as LastDropped also has tag "Checkpoint"
execute as @n[type=marker,tag=TutorialMarker,tag=LastDropped,tag=Checkpoint,distance=..1000] run function exigence:tutorial/flow/last_dropped_fallback

execute in exigence:tutorial at @n[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] \
as @n[type=marker,tag=TutorialMarker,tag=!Dropped,distance=..100] run function exigence:tutorial/marker/tutorial_token

# Base case: First node
execute in exigence:tutorial unless entity @e[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] \
at @n[type=marker,scores={TutorialMarkerID=6},tag=TutorialMarker,distance=..1000] \
as @n[type=marker,tag=TutorialMarker,tag=!Dropped,distance=..100] run function exigence:tutorial/marker/tutorial_token

# Update debug colors
execute as @e[type=marker,tag=TutorialMarker,distance=..1000] run function exigence:tutorial/marker/private/update_debug_color
