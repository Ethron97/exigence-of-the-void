# Removes visible marker

## CONSTRAINTS
#   AS marker

#====================================================================================================

tag @s remove Showing

execute at @s run kill @e[type=block_display,tag=TutorialMarkerGlow,distance=..2]
execute at @s run kill @e[type=text_display,tag=TutorialMarkerID,distance=..2]
