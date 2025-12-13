# Called by effects/update if score is 0

## INPUT
#   INT index

#=============================================================================================================

$data modify entity @n[distance=..5,type=text_display,tag=EffectScores] text.extra[$(index)].color set from storage exigence:temp color_a
$data modify entity @n[distance=..5,type=text_display,tag=EffectLabels] text.extra[$(index)].color set from storage exigence:temp color_a

$data modify entity @n[distance=..5,type=text_display,tag=EffectScores] text.extra[$(index)].text set value "\n"
