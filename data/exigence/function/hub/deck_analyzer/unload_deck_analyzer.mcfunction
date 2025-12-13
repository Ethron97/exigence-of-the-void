# Delete all displays related to this deck analyzer

## CONSTRAINTS
#   AT deck analyzer node

## INPUT
#   INT deck_analyzer_id

#=============================================================================================================

say UNload deck analyzer

$execute at @s run kill @e[distance=..10,type=#exigence:display,tag=DeckAnalyzerDisplay,scores={hub.entity.deck_analyzer_id=$(deck_analyzer_id)}]