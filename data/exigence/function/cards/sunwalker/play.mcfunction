say [5 Red: +3 minutes of Jump Boost II and Speed II]

# Consume
function exigence:resources/try_consume with storage exigence:resources

# Add effect
execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"jump",duration:3600}
execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:3600}
