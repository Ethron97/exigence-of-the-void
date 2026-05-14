# Summons a new tutorial marker

## CONSTRAINTS
#    AT location

#====================================================================================================

# Summon a new marker
execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["NewMarker","Marker","TutorialMarker"],CustomName:{text:"Marker | Tutorial"}}

scoreboard players add _next tutorial.marker.id 1
scoreboard players operation @n[type=minecraft:marker,tag=NewMarker,distance=..1] tutorial.marker.id = _next tutorial.marker.id

execute if score toggle.tutorial debug matches 1 as @n[type=minecraft:marker,tag=NewMarker,distance=..1] run function exigence:tutorial/marker/show

tag @n[type=minecraft:marker,tag=NewMarker,distance=..1] remove NewMarker
