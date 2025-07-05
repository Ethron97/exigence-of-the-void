say 2 Green, 1 Aqua: +2 minutes Invisibility

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"invisibility",duration:2400}
