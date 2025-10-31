say [1 Aqua: +30s Clairvoyance]

function exigence:resources/try_consume with storage exigence:resources
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"detection",duration:600}
