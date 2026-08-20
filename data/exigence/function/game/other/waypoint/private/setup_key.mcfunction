# Setup key item waypoint

## CONSTRAINTS
#   AS item
#   AT waypoint

#====================================================================================================

tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add LevelKeyWaypoint
execute if entity @s[tag=Level1Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level1Key
execute if entity @s[tag=Level2Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level2Key
execute if entity @s[tag=Level3Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level3Key
execute if entity @s[tag=Level1Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_1_key
execute if entity @s[tag=Level2Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_2_key
execute if entity @s[tag=Level3Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_3_key
