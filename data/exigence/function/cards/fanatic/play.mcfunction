say [4 Red: +180s of Jump Boost 2]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"jump",duration:3600}
