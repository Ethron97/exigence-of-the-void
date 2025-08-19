# Skips to next section
#   Called by access/use_item_hand

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

say Skip section

# Save current last dropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] add SaveLastDropped

# Reset tutorial
function exigence:tutorial/reset

# Restore saved last dropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=SaveLastDropped] add LastDropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=SaveLastDropped] remove SaveLastDropped
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] if score @s TutorialMarkerID < @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] TutorialMarkerID run tag @s add Dropped

execute as @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] run function exigence:tutorial/flow/private/i_next_section

tp @s @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback]

function exigence:tutorial/flow/reset_bossbars
