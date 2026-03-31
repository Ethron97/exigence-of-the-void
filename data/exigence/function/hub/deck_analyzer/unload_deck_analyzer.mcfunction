# Delete all displays related to this deck analyzer

## CONSTRAINTS
#   AT deck analyzer node

## INPUT
#   INT deck_analyzer_id

#====================================================================================================

say UNload deck analyzer

$execute at @s run kill @e[type=#exigence:display,scores={hub.entity.deck_analyzer_id=$(deck_analyzer_id)},tag=DeckAnalyzerDisplay,distance=..10]