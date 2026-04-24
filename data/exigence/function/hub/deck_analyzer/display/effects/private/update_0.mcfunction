# Called by effects/update if score is 0

## INPUT
#   INT index

#====================================================================================================

$data modify entity @n[type=minecraft:text_display,tag=EffectScores,distance=..5] text.extra[$(index)].color set from storage exigence:temp color_a
$data modify entity @n[type=minecraft:text_display,tag=EffectLabels,distance=..5] text.extra[$(index)].color set from storage exigence:temp color_a

$data modify entity @n[type=minecraft:text_display,tag=EffectScores,distance=..5] text.extra[$(index)].text set value "\n"
