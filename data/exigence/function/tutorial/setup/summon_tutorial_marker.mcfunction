# Summons a new tutorial marker

## CONSTRAINTS
#    AT location

#=============================================================================================================

# Summon a new marker
execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["NewMarker","Marker","TutorialMarker"]}


scoreboard players add _next TutorialMarkerID 1
scoreboard players operation @n[distance=..1,type=marker,tag=NewMarker] TutorialMarkerID = _next TutorialMarkerID

execute if data storage exigence:debug {tutorial:1} as @n[distance=..1,type=marker,tag=NewMarker] run function exigence:tutorial/marker/show

tag @n[distance=..1,type=marker,tag=NewMarker] remove NewMarker
