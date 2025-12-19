# Update display entities

## CONSTRAINTS
#   AT deck background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

#=============================================================================================================
## TOTAL + RARITY
# TOTAL
execute if data storage exigence:deck_analysis {cards_total:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_total:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[0].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[0].text set value "\n$(cards_total)"
execute if data storage exigence:deck_analysis {cards_total:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_total:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[0].color set from storage exigence:temp color_b

# If deck total is above 40, make yellow
execute if score cards.total deck.analysis matches 41.. run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[0].color set value "#DA4A42"
execute if score cards.total deck.analysis matches 41.. run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[0].color set value "#DA4A42"

# COMMON
execute if data storage exigence:deck_analysis {cards_common:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_common:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[2].color set value "#B2BEC6"
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[2].text set value "\n$(cards_common)"
execute if data storage exigence:deck_analysis {cards_common:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_common:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[2].color set from storage exigence:temp color_b

# UNCOMMON
execute if data storage exigence:deck_analysis {cards_uncommon:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_uncommon:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[3].color set value "#A6CDA3"
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[3].text set value "\n$(cards_uncommon)"
execute if data storage exigence:deck_analysis {cards_uncommon:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_uncommon:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[3].color set from storage exigence:temp color_b

# RARE
execute if data storage exigence:deck_analysis {cards_rare:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_rare:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[4].color set value "#A5B6EB"
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[4].text set value "\n$(cards_rare)"
execute if data storage exigence:deck_analysis {cards_rare:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_rare:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[4].color set from storage exigence:temp color_b

# LEGENDARY
execute if data storage exigence:deck_analysis {cards_legendary:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_legendary:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsA] text.extra[5].color set value "#DAA4EE"
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[5].text set value "\n$(cards_legendary)"
execute if data storage exigence:deck_analysis {cards_legendary:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_legendary:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresA] text.extra[5].color set from storage exigence:temp color_b


#=============================================================================================================
## CARD TYPES
# INSTANT
execute if data storage exigence:deck_analysis {cards_instant:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_instant:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[0].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[0].text set value "\n$(cards_instant)"
execute if data storage exigence:deck_analysis {cards_instant:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[0].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_instant:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[0].color set from storage exigence:temp color_b

# ASCEND
execute if data storage exigence:deck_analysis {cards_ascend:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_ascend:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[1].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[1].text set value "\n$(cards_ascend)"
execute if data storage exigence:deck_analysis {cards_ascend:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[1].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_ascend:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[1].color set from storage exigence:temp color_b

# PERSISTENT
execute if data storage exigence:deck_analysis {cards_persistent:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_persistent:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[2].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[2].text set value "\n$(cards_persistent)"
execute if data storage exigence:deck_analysis {cards_persistent:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[2].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_persistent:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[2].color set from storage exigence:temp color_b

# VOID
execute if data storage exigence:deck_analysis {cards_void:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_void:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[3].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[3].text set value "\n$(cards_void)"
execute if data storage exigence:deck_analysis {cards_void:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[3].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_void:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[3].color set from storage exigence:temp color_b

# RECYCLE
execute if data storage exigence:deck_analysis {cards_recycle:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_recycle:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[4].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[4].text set value "\n$(cards_recycle)"
execute if data storage exigence:deck_analysis {cards_recycle:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[4].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_recycle:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[4].color set from storage exigence:temp color_b

# SPELLBIND
execute if data storage exigence:deck_analysis {cards_spellbind:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_spellbind:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckLabelsB] text.extra[5].color set from storage exigence:temp color_b
$data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[5].text set value "\n$(cards_spellbind)"
execute if data storage exigence:deck_analysis {cards_spellbind:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[5].color set from storage exigence:temp color_a
execute unless data storage exigence:deck_analysis {cards_spellbind:0} run data modify entity @n[distance=..5,type=text_display,tag=DeckScoresB] text.extra[5].color set from storage exigence:temp color_b

#=============================================================================================================
## DECK TIMES

# DEFAULT TIME
scoreboard players operation in.seconds tick_convert = cards.time deck.analysis
function exigence:misc/general/convert_seconds_to_time
execute store result storage exigence:deck_analysis cards_time_M int 1 run scoreboard players get out.m tick_convert
execute store result storage exigence:deck_analysis cards_time_S int 1 run scoreboard players get out.s tick_convert
execute if data storage exigence:deck_analysis {cards_time_S:0} run data modify storage exigence:deck_analysis cards_time_S set value "00"
data modify storage exigence:deck_analysis index set value 1
function exigence:hub/deck_analyzer/display/deck/private/update with storage exigence:deck_analysis
# EXPECTED
scoreboard players operation in.seconds tick_convert = cards.time_expected deck.analysis
function exigence:misc/general/convert_seconds_to_time
execute store result storage exigence:deck_analysis cards_time_M int 1 run scoreboard players get out.m tick_convert
execute store result storage exigence:deck_analysis cards_time_S int 1 run scoreboard players get out.s tick_convert
execute if data storage exigence:deck_analysis {cards_time_S:0} run data modify storage exigence:deck_analysis cards_time_S set value "00"
data modify storage exigence:deck_analysis index set value 4
function exigence:hub/deck_analyzer/display/deck/private/update with storage exigence:deck_analysis
