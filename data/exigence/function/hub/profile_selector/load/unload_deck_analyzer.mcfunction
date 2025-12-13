# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AT location

## INPUT
#   INT profile_selector_id

#=============================================================================================================

say Unload deck analyzer

$execute as @n[distance=..24,tag=DeckAnalyzer,scores={hub.entity.profile_selector_id=$(profile_selector_id)}] \
run function exigence:hub/deck_analyzer/unload_deck_analyzer with entity @s data.custom_data
$kill @e[distance=..24,tag=DeckAnalyzerDisplay,scores={hub.entity.profile_selector_id=$(profile_selector_id)}]