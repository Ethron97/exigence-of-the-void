# Skips to next section
#   Called by access/use_item_hand

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

say Skip section

# Save current last dropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] add SaveLastDropped

# Reset tutorial
function exigence:tutorial/reset

clear @a[tag=Tutorial,distance=..1000] compass
clear @a[tag=Tutorial,distance=..1000] echo_shard
clear @a[tag=Tutorial,distance=..1000] blaze_powder

# Restore saved last dropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=SaveLastDropped] add LastDropped
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=SaveLastDropped] remove SaveLastDropped
execute as @e[type=marker,tag=TutorialMarker,distance=..1000] if score @s TutorialMarkerID < @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] TutorialMarkerID run tag @s add Dropped

execute as @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] run function exigence:tutorial/flow/private/i_next_section

tp @s @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback]

function exigence:tutorial/flow/reset_bossbars

execute if score Step Tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice
