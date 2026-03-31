# Load deck analyzer for the locker room room

## CONSTRAINTS
#   AS locker room node
#   AT location

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say Setup deck analyzer from locker room

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
execute facing entity @s feet run function exigence:hub/deck_analyzer/summon_deck_analyzer_node

# Copy score(s)
scoreboard players operation @n[type=marker,tag=NewDeckAnalyzer,distance=..1] hub.entity.locker_room_id = @s hub.locker_room_id

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
execute as @n[type=marker,tag=NewDeckAnalyzer,distance=..1] at @s run function exigence:hub/locker_room/load/load_deck_analyzer

# Remove local tag
tag @n[type=marker,tag=NewDeckAnalyzer,distance=..1] remove NewDeckAnalyzer