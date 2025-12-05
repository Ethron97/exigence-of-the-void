# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AT location

## INPUT
#   INT profile_selector_id

#=============================================================================================================

say Unload deck analyzer

$kill @e[distance=..24,tag=DeckAnalyzerDisplay,scores={hub.entity.profile_selector_id=$(profile_selector_id)}]