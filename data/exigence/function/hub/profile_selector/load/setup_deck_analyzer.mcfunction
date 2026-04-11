# Load deck analyzer for the profile selector room

## CONSTRAINTS
#   AS marker (blank)
#   AT location (+facing)

## INPUT
#   SCORE #input hub.profile_selector_id

#====================================================================================================

#say (D3) Setup deck analyzer from profile selector room

# Call interface-summon
function exigence:hub/deck_analyzer/setup_deck_analyzer_node

# Copy score(s)
scoreboard players operation @s hub.entity.profile_selector_id = #input hub.profile_selector_id
