# Load deck analyzer for this room

## CONSTRAINTS
#   AS marker (blank)
#   AT location (+facing)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

#say (D3) Setup deck analyzer [predungeon]

# Call interface-summon
function exigence:hub/deck_analyzer/setup_deck_analyzer_node

tag @s add PredungeonAnalyzerDisplay

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
function exigence:hub/predungeon/load/load_deck_analyzer