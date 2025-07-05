say Dash [1 Red: +60s of Speed II]

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:1200}
