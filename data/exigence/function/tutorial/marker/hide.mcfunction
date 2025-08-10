# Removes visible marker

## CONSTRAINTS
#   AS marker

#=============================================================================================================

tag @s remove Showing

execute at @s run kill @e[distance=..2,type=block_display,tag=TutorialMarkerGlow]
execute at @s run kill @e[distance=..2,type=text_display,tag=TutorialMarkerID]
