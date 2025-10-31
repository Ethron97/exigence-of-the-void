say [1 Aqua: +60s Glimmer]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"glimmer",duration:1200}
