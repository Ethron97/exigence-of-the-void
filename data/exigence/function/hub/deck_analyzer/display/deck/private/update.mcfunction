# Called by effects/update

## INPUT
#   INT index
#   INT cards_time_M
#   INT(2) cards_time_S

#=============================================================================================================

$data modify entity @n[distance=..5,type=text_display,tag=DeckTime] text.extra[$(index)].text set value "\n$(cards_time_M):$(cards_time_S)"