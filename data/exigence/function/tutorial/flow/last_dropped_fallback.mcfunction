# Dynamically updates which marker is marked as the current Fallback position

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# Reset tag
tag @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] remove Fallback

# Give tag to the current LastDropped
tag @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] add Fallback

# Update debug colors
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/update_debug_color
