say Second Wind [2 Green: +60s of Regen, +60s of Speed I]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:1,duration:1200}
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"regen",duration:1200}
