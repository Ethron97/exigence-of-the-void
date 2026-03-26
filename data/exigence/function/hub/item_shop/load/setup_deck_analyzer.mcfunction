# Load deck analyzer for this room

## CONSTRAINTS
#   AT location (+facing)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say Setup deck analyzer from ITEM SHOP

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
function exigence:hub/deck_analyzer/summon_deck_analyzer_node

tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] add ItemShopAnalyzerDisplay

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
execute as @n[distance=..1,type=marker,tag=NewDeckAnalyzer] at @s run function exigence:hub/item_shop/load/load_deck_analyzer

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] remove NewDeckAnalyzer