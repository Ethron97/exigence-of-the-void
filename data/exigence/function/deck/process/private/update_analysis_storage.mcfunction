# Load deck analysis data into storage

#data modify storage exigence:deck_analysis
execute store result storage exigence:deck_analysis resource_green_consume int 1 run scoreboard players get resource.green.consume deck.analysis
execute store result storage exigence:deck_analysis resource_red_consume int 1 run scoreboard players get resource.red.consume deck.analysis
execute store result storage exigence:deck_analysis resource_aqua_consume int 1 run scoreboard players get resource.aqua.consume deck.analysis
execute store result storage exigence:deck_analysis resource_green_cards int 1 run scoreboard players get resource.green.cards deck.analysis
execute store result storage exigence:deck_analysis resource_red_cards int 1 run scoreboard players get resource.red.cards deck.analysis
execute store result storage exigence:deck_analysis resource_aqua_cards int 1 run scoreboard players get resource.aqua.cards deck.analysis
execute store result storage exigence:deck_analysis e_heighten int 1 run scoreboard players get e.heighten deck.analysis
execute store result storage exigence:deck_analysis e_speedSeconds int 1 run scoreboard players get e.speedSeconds deck.analysis
execute store result storage exigence:deck_analysis e_speed2Seconds int 1 run scoreboard players get e.speed2Seconds deck.analysis
execute store result storage exigence:deck_analysis e_regenSeconds int 1 run scoreboard players get e.regenSeconds deck.analysis
execute store result storage exigence:deck_analysis e_jumpSeconds int 1 run scoreboard players get e.jumpSeconds deck.analysis
execute store result storage exigence:deck_analysis e_invisibilitySeconds int 1 run scoreboard players get e.invisibilitySeconds deck.analysis
execute store result storage exigence:deck_analysis e_beastsenseSeconds int 1 run scoreboard players get e.beastsenseSeconds deck.analysis
execute store result storage exigence:deck_analysis e_glimmerSeconds int 1 run scoreboard players get e.glimmerSeconds deck.analysis
execute store result storage exigence:deck_analysis e_detectionSeconds int 1 run scoreboard players get e.detectionSeconds deck.analysis
execute store result storage exigence:deck_analysis e_flickerSeconds int 1 run scoreboard players get e.flickerSeconds deck.analysis
execute store result storage exigence:deck_analysis e_circulationSeconds int 1 run scoreboard players get e.circulationSeconds deck.analysis
execute store result storage exigence:deck_analysis other_berry int 1 run scoreboard players get other.berry deck.analysis
execute store result storage exigence:deck_analysis other_treasure int 1 run scoreboard players get other.treasure deck.analysis
execute store result storage exigence:deck_analysis other_ember int 1 run scoreboard players get other.ember deck.analysis
execute store result storage exigence:deck_analysis other_card_shop int 1 run scoreboard players get other.card_shop deck.analysis
execute store result storage exigence:deck_analysis other_difficulty_mod int 1 run scoreboard players get other.difficulty_mod deck.analysis
execute store result storage exigence:deck_analysis other_level_1_keys int 1 run scoreboard players get other.level_1_keys deck.analysis
execute store result storage exigence:deck_analysis other_level_2_keys int 1 run scoreboard players get other.level_2_keys deck.analysis
execute store result storage exigence:deck_analysis other_level_3_keys int 1 run scoreboard players get other.level_3_keys deck.analysis
execute store result storage exigence:deck_analysis other_menace int 1 run scoreboard players get other.menace deck.analysis
execute store result storage exigence:deck_analysis other_hazard int 1 run scoreboard players get other.hazard deck.analysis
execute store result storage exigence:deck_analysis hazard_level_1 int 1 run scoreboard players get hazard.level_1 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_2 int 1 run scoreboard players get hazard.level_2 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_3 int 1 run scoreboard players get hazard.level_3 deck.analysis
execute store result storage exigence:deck_analysis hazard_level_4 int 1 run scoreboard players get hazard.level_4 deck.analysis
execute store result storage exigence:deck_analysis hazard_random int 1 run scoreboard players get hazard.random deck.analysis
execute store result storage exigence:deck_analysis hazard_echo int 1 run scoreboard players get hazard.echo deck.analysis
execute store result storage exigence:deck_analysis cards_total int 1 run scoreboard players get cards.total deck.analysis
execute store result storage exigence:deck_analysis cards_void int 1 run scoreboard players get cards.void deck.analysis
execute store result storage exigence:deck_analysis cards_ascend int 1 run scoreboard players get cards.ascend deck.analysis
execute store result storage exigence:deck_analysis cards_instant int 1 run scoreboard players get cards.instant deck.analysis
execute store result storage exigence:deck_analysis cards_persistent int 1 run scoreboard players get cards.persistent deck.analysis
execute store result storage exigence:deck_analysis cards_recycle int 1 run scoreboard players get cards.recycle deck.analysis
execute store result storage exigence:deck_analysis cards_spellbind int 1 run scoreboard players get cards.spellbind deck.analysis

# Calcuate minute/second amounts for each potion effect. Function feeds it into the data path given
function exigence:hub/predungeon/private/format_effect_time {effect:speed}
function exigence:hub/predungeon/private/format_effect_time {effect:speed2}
function exigence:hub/predungeon/private/format_effect_time {effect:regen}
function exigence:hub/predungeon/private/format_effect_time {effect:jump}
function exigence:hub/predungeon/private/format_effect_time {effect:invisibility}

function exigence:hub/predungeon/private/format_effect_time {effect:beastsense}
function exigence:hub/predungeon/private/format_effect_time {effect:glimmer}
function exigence:hub/predungeon/private/format_effect_time {effect:detection}
function exigence:hub/predungeon/private/format_effect_time {effect:flicker}
function exigence:hub/predungeon/private/format_effect_time {effect:circulation}
