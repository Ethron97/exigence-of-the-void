# Called by effects/update

## INPUT
#   INT index
#   STR effect

#=============================================================================================================

$data modify entity @n[distance=..5,type=text_display,tag=EffectScores] text.extra[$(index)].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=EffectLabels] text.extra[$(index)].color set from storage exigence:temp color_b

$data modify storage exigence:temp M set from storage exigence:deck_analysis $(effect).M
$data modify storage exigence:temp S set from storage exigence:deck_analysis $(effect).S
$execute if data storage exigence:deck_analysis {$(effect):{S:0}} run data modify storage exigence:temp S set value "00"
$data modify storage exigence:temp index set value $(index)
function exigence:hub/deck_analyzer/display/effects/private/update_b with storage exigence:temp