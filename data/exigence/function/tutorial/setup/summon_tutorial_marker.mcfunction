# Summons a new tutorial marker

## CONSTRAINTS
#    AT location

#====================================================================================================

# Summon a new marker
execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["NewMarker","Marker","TutorialMarker"],CustomName:{text:"Marker | Tutorial"}}


scoreboard players add _next TutorialMarkerID 1
scoreboard players operation @n[type=minecraft:marker,tag=NewMarker,distance=..1] TutorialMarkerID = _next TutorialMarkerID

execute if data storage exigence:debug {tutorial:1} as @n[type=minecraft:marker,tag=NewMarker,distance=..1] run function exigence:tutorial/marker/show

tag @n[type=minecraft:marker,tag=NewMarker,distance=..1] remove NewMarker
