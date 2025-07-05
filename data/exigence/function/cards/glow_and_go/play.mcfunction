say [1 Red: +30s Glimmer, +30s Flicker, +30 Speed II]

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:600}
execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"glimmer",duration:600}
execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"flicker",duration:600}
