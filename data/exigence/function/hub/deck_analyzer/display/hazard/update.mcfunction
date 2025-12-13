# Update display entities

## CONSTRAINTS
#   AT core background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

# HAZARD LEVEL 1
execute if data storage exigence:deck_analysis {hazard_level_1:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_1:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[0].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[1].text set value "+$(hazard_level_1)"
execute if data storage exigence:deck_analysis {hazard_level_1:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_1:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[1].color set from storage exigence:temp color_red

# HAZARD LEVEL 2
execute if data storage exigence:deck_analysis {hazard_level_2:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_2:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[1].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[3].text set value "+$(hazard_level_2)"
execute if data storage exigence:deck_analysis {hazard_level_2:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_2:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[3].color set from storage exigence:temp color_red

# HAZARD LEVEL 3
execute if data storage exigence:deck_analysis {hazard_level_3:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_3:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[2].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[5].text set value "+$(hazard_level_3)"
execute if data storage exigence:deck_analysis {hazard_level_3:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_3:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[5].color set from storage exigence:temp color_red

# HAZARD LEVEL 4
execute if data storage exigence:deck_analysis {hazard_level_4:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_4:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[3].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[7].text set value "+$(hazard_level_4)"
execute if data storage exigence:deck_analysis {hazard_level_4:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[7].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_level_4:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[7].color set from storage exigence:temp color_red

# HAZARD RANDOM
execute if data storage exigence:deck_analysis {hazard_random:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_random:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[4].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[8].text set value "\n$(hazard_random)"
execute if data storage exigence:deck_analysis {hazard_random:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[8].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_random:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[8].color set from storage exigence:temp color_red

# HAZARD ECHO
execute if data storage exigence:deck_analysis {hazard_echo:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_echo:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardLabels] text.extra[5].color set from storage exigence:temp color_red
$data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[9].text set value "\n$(hazard_echo)"
execute if data storage exigence:deck_analysis {hazard_echo:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[9].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {hazard_echo:0} run data modify entity @n[distance=..5,type=text_display,tag=HazardScores] text.extra[9].color set from storage exigence:temp color_red
