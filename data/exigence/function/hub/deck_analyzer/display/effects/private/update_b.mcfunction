# Called by effects/update

## INPUT
#   INT index
#   INT M (minute)
#   INT S (second)

#=============================================================================================================

$data modify entity @n[distance=..5,type=text_display,tag=EffectScores] text.extra[$(index)].text set value "\n$(M):$(S)"
