# Load deck analyzer for this room

## CONSTRAINTS
#   AT location (+facing)

#====================================================================================================

say Setup deck analyzer from ITEM SHOP

# Summon deck analyzer menu
#   Summons node, refresh button, and displays
function exigence:hub/deck_analyzer/summon_deck_analyzer_node

tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] add ItemShopAnalyzerDisplay

# Load load
execute as @n[distance=..1,type=marker,tag=NewDeckAnalyzer] at @s run function exigence:hub/item_shop/load/load_deck_analyzer with storage exigence:temp

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewDeckAnalyzer] remove NewDeckAnalyzer