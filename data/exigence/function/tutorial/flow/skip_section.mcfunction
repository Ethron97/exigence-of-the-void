# Skips to next section
#   Called by access/use_item_hand

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

say Skip section

# Save current last dropped
tag @n[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] add SaveLastDropped

# Reset tutorial
function exigence:tutorial/reset

clear @a[tag=Tutorial,distance=..1000] compass
clear @a[tag=Tutorial,distance=..1000] echo_shard
clear @a[tag=Tutorial,distance=..1000] blaze_powder

# Restore saved last dropped
tag @n[type=marker,tag=TutorialMarker,tag=SaveLastDropped,distance=..1000] add LastDropped
tag @n[type=marker,tag=TutorialMarker,tag=SaveLastDropped,distance=..1000] remove SaveLastDropped
execute as @e[type=marker,tag=TutorialMarker,distance=..1000] if score @s TutorialMarkerID < @n[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] TutorialMarkerID run tag @s add Dropped

execute as @n[type=marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] run function exigence:tutorial/flow/private/i_next_section

tp @s @n[type=marker,tag=TutorialMarker,tag=Fallback,distance=..1000]

function exigence:tutorial/flow/reset_bossbars

execute if score Step Tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice
