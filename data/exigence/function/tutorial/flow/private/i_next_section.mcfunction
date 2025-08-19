# Iterative function to step over markers
#   Finds first Checkpoint marker after starting marker

## CONSTRAINTS
#   IN exigence:tutorial
#   AS TutorialMarker

#=============================================================================================================

# DEBUG
#say Next section iterate

# Reset token
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] run tag @s remove LastDropped
tag @s add LastDropped
tag @s add Dropped

# If node that was marked as LastDropped also has tag "Checkpoint" and tp player forward
execute as @s[tag=Checkpoint] run function exigence:tutorial/flow/last_dropped_fallback
execute as @s[tag=Checkpoint] run function exigence:tutorial/flow/next_token

# Update debug colors
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] run function exigence:tutorial/marker/private/update_debug_color

# If not checkpoint, iterate
execute in exigence:tutorial at @s[tag=!Checkpoint] as @n[distance=..100,type=marker,tag=TutorialMarker,tag=!Dropped] run function exigence:tutorial/flow/private/i_next_section

