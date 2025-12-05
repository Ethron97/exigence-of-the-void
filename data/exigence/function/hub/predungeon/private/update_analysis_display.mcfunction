# Load deck analysis data into scoreboard for sign loading

#data modify storage exigence:deck_analysis
execute store result storage exigence:deck_analysis GreenConsume int 1 run scoreboard players get resource.green_consume deck.analysis
execute store result storage exigence:deck_analysis RedConsume int 1 run scoreboard players get resource.red_consume deck.analysis
execute store result storage exigence:deck_analysis AquaConsume int 1 run scoreboard players get resource.aqua_consume deck.analysis
execute store result storage exigence:deck_analysis speedSeconds int 1 run scoreboard players get e.speedSeconds deck.analysis
execute store result storage exigence:deck_analysis speed2Seconds int 1 run scoreboard players get e.speed2Seconds deck.analysis
execute store result storage exigence:deck_analysis regenSeconds int 1 run scoreboard players get e.regenSeconds deck.analysis
execute store result storage exigence:deck_analysis jumpSeconds int 1 run scoreboard players get e.jumpSeconds deck.analysis
execute store result storage exigence:deck_analysis invisibilitySeconds int 1 run scoreboard players get e.invisibilitySeconds deck.analysis
execute store result storage exigence:deck_analysis beastSenseSeconds int 1 run scoreboard players get e.beastsenseSeconds deck.analysis
execute store result storage exigence:deck_analysis glimmerSeconds int 1 run scoreboard players get e.glimmerSeconds deck.analysis
execute store result storage exigence:deck_analysis detectionSeconds int 1 run scoreboard players get e.detectionSeconds deck.analysis
execute store result storage exigence:deck_analysis flickerSeconds int 1 run scoreboard players get e.flickerSeconds deck.analysis
execute store result storage exigence:deck_analysis Menace int 1 run scoreboard players get other.menace deck.analysis
execute store result storage exigence:deck_analysis Hazard int 1 run scoreboard players get other.hazard deck.analysis
execute store result storage exigence:deck_analysis Berry int 1 run scoreboard players get other.berry deck.analysis
execute store result storage exigence:deck_analysis Treasure int 1 run scoreboard players get other.treasure deck.analysis
execute store result storage exigence:deck_analysis Ember int 1 run scoreboard players get other.ember deck.analysis
execute store result storage exigence:deck_analysis CardsTotal int 1 run scoreboard players get cards.total deck.analysis
execute store result storage exigence:deck_analysis CardsVoid int 1 run scoreboard players get cards.void deck.analysis
execute store result storage exigence:deck_analysis CardsAscend int 1 run scoreboard players get cards.ascend deck.analysis
execute store result storage exigence:deck_analysis CardsInstant int 1 run scoreboard players get cards.instant deck.analysis
execute store result storage exigence:deck_analysis DifficultyMod int 1 run scoreboard players get other.difficulty_mod deck.analysis
execute store result storage exigence:deck_analysis Level1Keys int 1 run scoreboard players get other.level_1_keys deck.analysis
execute store result storage exigence:deck_analysis Level2Keys int 1 run scoreboard players get other.level_2_keys deck.analysis
execute store result storage exigence:deck_analysis Level3Keys int 1 run scoreboard players get other.level_3_keys deck.analysis

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


function exigence:hub/predungeon/private/update_analysis_display_macro with storage exigence:deck_analysis

# Clone copy of signs in the ember shop so you know what your deck is
clone -257 20 -75 -257 18 -71 -273 18 -39
