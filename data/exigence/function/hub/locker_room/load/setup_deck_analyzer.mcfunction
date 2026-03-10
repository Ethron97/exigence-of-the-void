# Load deck analyzer for the locker room room

## CONSTRAINTS
#   AS locker room node
#   AT location

#====================================================================================================

say Setup deck analyzer from locker room

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
execute facing entity @s feet run function exigence:hub/deck_analyzer/summon_deck_analyzer_node

# Copy score(s)
scoreboard players operation @n[distance=..1,type=marker,tag=NewDeckAnalyzer] hub.entity.locker_room_id = @s hub.locker_room_id

# Load load
execute as @n[distance=..1,type=marker,tag=NewDeckAnalyzer] at @s run function exigence:hub/locker_room/load/load_deck_analyzer with storage exigence:temp

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] remove NewDeckAnalyzer