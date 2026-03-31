# Called by effects/update

## INPUT
#   INT index
#   INT M (minute)
#   INT S (second)

#====================================================================================================

$data modify entity @n[type=text_display,tag=EffectScores,distance=..5] text.extra[$(index)].text set value "\n$(M):$(S)"
