# Setup ardor item waypoint

## CONSTRAINTS
#   AS item
#   AT waypoint

#====================================================================================================

tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add ArdorWaypoint
execute if entity @s[tag=Level1Ardor] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level1Ardor
execute if entity @s[tag=Level2Ardor] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level2Ardor
execute if entity @s[tag=Level3Ardor] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level3Ardor
execute if entity @s[tag=Level4Ardor] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level4Ardor
execute if entity @s[tag=Level1Ardor] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:ardor_ember_1
execute if entity @s[tag=Level2Ardor] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:ardor_ember_2
execute if entity @s[tag=Level3Ardor] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:ardor_ember_3
execute if entity @s[tag=Level4Ardor] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:ardor_ember_4
