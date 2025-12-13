# Update display entities

## CONSTRAINTS
#   AT core background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

## CORE
# BERRY
execute if data storage exigence:deck_analysis {other_berry:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_berry:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[0].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[0].text set value "\n$(other_berry)"
execute if data storage exigence:deck_analysis {other_berry:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_berry:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[0].color set from storage exigence:temp color_b

# TREASURE
execute if data storage exigence:deck_analysis {other_treasure:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_treasure:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[1].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[1].text set value "\n$(other_treasure)"
execute if data storage exigence:deck_analysis {other_treasure:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_treasure:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[1].color set from storage exigence:temp color_b

# EMBER
execute if data storage exigence:deck_analysis {other_ember:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_ember:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[2].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[2].text set value "\n$(other_ember)"
execute if data storage exigence:deck_analysis {other_ember:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_ember:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[2].color set from storage exigence:temp color_b

# HEIGHTEN
execute if data storage exigence:deck_analysis {e_heighten:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {e_heighten:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[3].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[3].text set value "\n$(e_heighten)"
execute if data storage exigence:deck_analysis {e_heighten:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {e_heighten:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[3].color set from storage exigence:temp color_b

#=============================================================================================================
## SETUP
# SHOP SLOTS
execute if data storage exigence:deck_analysis {other_card_shop:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_card_shop:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[4].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[4].text set value "\n\n+$(other_card_shop)"
execute if data storage exigence:deck_analysis {other_card_shop:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_card_shop:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[4].color set from storage exigence:temp color_b

# ECHO MOD
execute if data storage exigence:deck_analysis {other_difficulty_mod:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_difficulty_mod:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[5].color set from storage exigence:temp color_b
$execute if score other.difficulty_mod deck.analysis matches ..-1 run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[5].text set value "\n-$(other_difficulty_mod)"
$execute if score other.difficulty_mod deck.analysis matches 0.. run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[5].text set value "\n+$(other_difficulty_mod)"
execute if data storage exigence:deck_analysis {other_difficulty_mod:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_difficulty_mod:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[5].color set from storage exigence:temp color_b

# KEY 1
execute if data storage exigence:deck_analysis {other_level_1_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[6].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_1_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[6].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[6].text set value "\n+$(other_level_1_keys)"
execute if data storage exigence:deck_analysis {other_level_1_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[6].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_1_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[6].color set from storage exigence:temp color_b

# KEY 2
execute if data storage exigence:deck_analysis {other_level_2_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[7].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_2_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[7].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[7].text set value "\n+$(other_level_2_keys)"
execute if data storage exigence:deck_analysis {other_level_2_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[7].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_2_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[7].color set from storage exigence:temp color_b

# KEY 3
execute if data storage exigence:deck_analysis {other_level_3_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[8].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_3_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreLabels] text.extra[8].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[8].text set value "\n+$(other_level_3_keys)"
execute if data storage exigence:deck_analysis {other_level_3_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[8].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {other_level_3_keys:0} run data modify entity @n[distance=..5,type=text_display,tag=CoreScores] text.extra[8].color set from storage exigence:temp color_b
