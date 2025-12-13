# Load deck analysis data into scoreboard for sign loading

#data modify storage exigence:deck_analysis
execute store result storage exigence:deck_analysis resource_green_consume int 1 run scoreboard players get resource_green_consume deck.analysis
execute store result storage exigence:deck_analysis resource_red_consume int 1 run scoreboard players get resource_red_consume deck.analysis
execute store result storage exigence:deck_analysis resource_aqua_consume int 1 run scoreboard players get resource_aqua_consume deck.analysis
execute store result storage exigence:deck_analysis resource_green_cards int 1 run scoreboard players get resource_green_cards deck.analysis
execute store result storage exigence:deck_analysis resource_red_cards int 1 run scoreboard players get resource_red_cards deck.analysis
execute store result storage exigence:deck_analysis resource_aqua_cards int 1 run scoreboard players get resource_aqua_cards deck.analysis
execute store result storage exigence:deck_analysis e_heighten int 1 run scoreboard players get e_heighten deck.analysis
execute store result storage exigence:deck_analysis e_speedSeconds int 1 run scoreboard players get e_speedSeconds deck.analysis
execute store result storage exigence:deck_analysis e_speed2Seconds int 1 run scoreboard players get e_speed2Seconds deck.analysis
execute store result storage exigence:deck_analysis e_regenSeconds int 1 run scoreboard players get e_regenSeconds deck.analysis
execute store result storage exigence:deck_analysis e_jumpSeconds int 1 run scoreboard players get e_jumpSeconds deck.analysis
execute store result storage exigence:deck_analysis e_invisibilitySeconds int 1 run scoreboard players get e_invisibilitySeconds deck.analysis
execute store result storage exigence:deck_analysis e_beastsenseSeconds int 1 run scoreboard players get e_beastsenseSeconds deck.analysis
execute store result storage exigence:deck_analysis e_glimmerSeconds int 1 run scoreboard players get e_glimmerSeconds deck.analysis
execute store result storage exigence:deck_analysis e_detectionSeconds int 1 run scoreboard players get e_detectionSeconds deck.analysis
execute store result storage exigence:deck_analysis e_flickerSeconds int 1 run scoreboard players get e_flickerSeconds deck.analysis
execute store result storage exigence:deck_analysis e_circulationSeconds int 1 run scoreboard players get e_circulationSeconds deck.analysis
execute store result storage exigence:deck_analysis other_berry int 1 run scoreboard players get other_berry deck.analysis
execute store result storage exigence:deck_analysis other_treasure int 1 run scoreboard players get other_treasure deck.analysis
execute store result storage exigence:deck_analysis other_ember int 1 run scoreboard players get other_ember deck.analysis
execute store result storage exigence:deck_analysis other_card_shop int 1 run scoreboard players get other_card_shop deck.analysis
execute store result storage exigence:deck_analysis other_difficulty_mod int 1 run scoreboard players get other_difficulty_mod deck.analysis
execute store result storage exigence:deck_analysis other_level_1_keys int 1 run scoreboard players get other_level_1_keys deck.analysis
execute store result storage exigence:deck_analysis other_level_2_keys int 1 run scoreboard players get other_level_2_keys deck.analysis
execute store result storage exigence:deck_analysis other_level_3_keys int 1 run scoreboard players get other_level_3_keys deck.analysis
execute store result storage exigence:deck_analysis other_menace int 1 run scoreboard players get other_menace deck.analysis
execute store result storage exigence:deck_analysis other_hazard int 1 run scoreboard players get other_hazard deck.analysis
execute store result storage exigence:deck_analysis hazard_level_1 int 1 run scoreboard players get hazard_level_1 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_2 int 1 run scoreboard players get hazard_level_2 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_3 int 1 run scoreboard players get hazard_level_3 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_4 int 1 run scoreboard players get hazard_level_4 deck.analysis
execute store result storage exigence:deck_analysis hazard_random int 1 run scoreboard players get hazard_random deck.analysis
execute store result storage exigence:deck_analysis hazard_echo int 1 run scoreboard players get hazard_echo deck.analysis
execute store result storage exigence:deck_analysis cards_total int 1 run scoreboard players get cards_total deck.analysis
execute store result storage exigence:deck_analysis cards_void int 1 run scoreboard players get cards_void deck.analysis
execute store result storage exigence:deck_analysis cards_ascend int 1 run scoreboard players get cards_ascend deck.analysis
execute store result storage exigence:deck_analysis cards_instant int 1 run scoreboard players get cards_instant deck.analysis
execute store result storage exigence:deck_analysis cards_persistent int 1 run scoreboard players get cards_persistent deck.analysis
execute store result storage exigence:deck_analysis cards_recycle int 1 run scoreboard players get cards_recycle deck.analysis
execute store result storage exigence:deck_analysis cards_spellbind int 1 run scoreboard players get cards_spellbind deck.analysis

# Calcuate minute/second amounts for each potion effect. Function feeds it into the data path given
function exigence:hub/predungeon/private/format_effect_time {effect:speed}
function exigence:hub/predungeon/private/format_effect_time {effect:speed2}
function exigence:hub/predungeon/private/format_effect_time {effect:regen}
function exigence:hub/predungeon/private/format_effect_time {effect:jump}
function exigence:hub/predungeon/private/format_effect_time {effect:invisibility}

function exigence:hub/predungeon/private/format_effect_time {effect:beastSense}
function exigence:hub/predungeon/private/format_effect_time {effect:glimmer}
function exigence:hub/predungeon/private/format_effect_time {effect:detection}
function exigence:hub/predungeon/private/format_effect_time {effect:flicker}
function exigence:hub/predungeon/private/format_effect_time {effect:circulation}

function exigence:hub/predungeon/private/update_analysis_display_macro with storage exigence:deck_analysis

# Clone copy of signs in the ember shop so you know what your deck is
clone -257 20 -75 -257 18 -71 -273 18 -39
