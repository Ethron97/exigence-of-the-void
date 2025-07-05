# Load deck analysis data into scoreboard for sign loading

#data modify storage exigence:deck_analysis
execute store result storage exigence:deck_analysis GreenConsume int 1 run scoreboard players get GreenConsume DeckAnalysis
execute store result storage exigence:deck_analysis RedConsume int 1 run scoreboard players get RedConsume DeckAnalysis
execute store result storage exigence:deck_analysis AquaConsume int 1 run scoreboard players get AquaConsume DeckAnalysis
execute store result storage exigence:deck_analysis speedSeconds int 1 run scoreboard players get speedSeconds DeckAnalysis
execute store result storage exigence:deck_analysis speed2Seconds int 1 run scoreboard players get speed2Seconds DeckAnalysis
execute store result storage exigence:deck_analysis regenSeconds int 1 run scoreboard players get regenSeconds DeckAnalysis
execute store result storage exigence:deck_analysis jumpSeconds int 1 run scoreboard players get jumpSeconds DeckAnalysis
execute store result storage exigence:deck_analysis invisibilitySeconds int 1 run scoreboard players get invisibilitySeconds DeckAnalysis
execute store result storage exigence:deck_analysis beastSenseSeconds int 1 run scoreboard players get beastSenseSeconds DeckAnalysis
execute store result storage exigence:deck_analysis glimmerSeconds int 1 run scoreboard players get glimmerSeconds DeckAnalysis
execute store result storage exigence:deck_analysis detectionSeconds int 1 run scoreboard players get detectionSeconds DeckAnalysis
execute store result storage exigence:deck_analysis flickerSeconds int 1 run scoreboard players get flickerSeconds DeckAnalysis
execute store result storage exigence:deck_analysis Menace int 1 run scoreboard players get Menace DeckAnalysis
execute store result storage exigence:deck_analysis Hazard int 1 run scoreboard players get Hazard DeckAnalysis
execute store result storage exigence:deck_analysis Berry int 1 run scoreboard players get Berry DeckAnalysis
execute store result storage exigence:deck_analysis Treasure int 1 run scoreboard players get Treasure DeckAnalysis
execute store result storage exigence:deck_analysis Ember int 1 run scoreboard players get Ember DeckAnalysis
execute store result storage exigence:deck_analysis CardsTotal int 1 run scoreboard players get CardsTotal DeckAnalysis
execute store result storage exigence:deck_analysis CardsVoid int 1 run scoreboard players get CardsVoid DeckAnalysis
execute store result storage exigence:deck_analysis CardsAscend int 1 run scoreboard players get CardsAscend DeckAnalysis
execute store result storage exigence:deck_analysis CardsInstant int 1 run scoreboard players get CardsInstant DeckAnalysis
execute store result storage exigence:deck_analysis DifficultyMod int 1 run scoreboard players get DifficultyMod DeckAnalysis
execute store result storage exigence:deck_analysis Level1Keys int 1 run scoreboard players get Level1Keys DeckAnalysis
execute store result storage exigence:deck_analysis Level2Keys int 1 run scoreboard players get Level2Keys DeckAnalysis
execute store result storage exigence:deck_analysis Level3Keys int 1 run scoreboard players get Level3Keys DeckAnalysis

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
