# Load deck analyzer for this room

## CONSTRAINTS
#   AS marker (blank)
#   AT location (+facing)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

#say (D3) Setup deck analyzer [item shop]

# Call interface-summon
function exigence:hub/deck_analyzer/setup_deck_analyzer_node

tag @s add ItemShopAnalyzerDisplay

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
function exigence:hub/item_shop/load/load_deck_analyzer