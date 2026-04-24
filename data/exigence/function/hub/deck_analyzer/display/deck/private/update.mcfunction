# Called by effects/update

## INPUT
#   INT index
#   INT cards_time_M
#   INT(2) cards_time_S

#====================================================================================================

$data modify entity @n[type=minecraft:text_display,tag=DeckTime,distance=..5] text.extra[$(index)].text set value "\n$(cards_time_M):$(cards_time_S)"