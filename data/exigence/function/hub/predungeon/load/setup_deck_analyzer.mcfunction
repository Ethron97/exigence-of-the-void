# Load deck analyzer for this room

## CONSTRAINTS
#   AT location (+facing)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say Setup deck analyzer from PREDUNGEON

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
function exigence:hub/deck_analyzer/summon_deck_analyzer_node

tag @n[type=marker,tag=NewDeckAnalyzer,distance=..1] add PredungeonAnalyzerDisplay

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
execute as @n[type=marker,tag=NewDeckAnalyzer,distance=..1] at @s run function exigence:hub/predungeon/load/load_deck_analyzer

# Remove local tag
tag @n[type=marker,tag=NewDeckAnalyzer,distance=..1] remove NewDeckAnalyzer