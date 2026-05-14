# Cause the next closest non-dropped

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.next_token without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Next token

# If node that was marked as LastDropped also has tag "Checkpoint"
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped,tag=Checkpoint,limit=1] run function exigence:tutorial/flow/last_dropped_fallback

execute at @n[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] \
as @n[type=minecraft:marker,tag=TutorialMarker,tag=!Dropped,distance=..100] run function exigence:tutorial/marker/tutorial_token

# Base case: First node
execute unless entity @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] \
at @n[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={tutorial.marker.id=6},tag=TutorialMarker] \
as @n[type=minecraft:marker,tag=TutorialMarker,tag=!Dropped,distance=..100] run function exigence:tutorial/marker/tutorial_token

# Update debug colors
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/update_debug_color
