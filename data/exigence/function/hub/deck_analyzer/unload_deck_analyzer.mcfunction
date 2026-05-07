# Delete all displays related to this deck analyzer

## CONSTRAINTS
#   AT deck analyzer node

## INPUT
#   INT deck_analyzer_id

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Unload deck analyzer

$execute at @s run kill @e[type=#exigence:display,scores={hub.entity.deck_analyzer_id=$(deck_analyzer_id)},tag=DeckAnalyzerDisplay,distance=..10]