say [4 Red: +2 minutes of Jump Boost 4]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"jump4",duration:2400}
