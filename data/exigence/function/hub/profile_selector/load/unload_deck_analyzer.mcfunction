# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AT location

## INPUT
#   INT profile_selector_id

#====================================================================================================

say Unload deck analyzer

$execute as @n[scores={hub.entity.profile_selector_id=$(profile_selector_id)},tag=DeckAnalyzer,distance=..24] \
run function exigence:hub/deck_analyzer/unload_deck_analyzer with entity @s data.custom_data
$kill @e[scores={hub.entity.profile_selector_id=$(profile_selector_id)},tag=DeckAnalyzerDisplay,distance=..24]