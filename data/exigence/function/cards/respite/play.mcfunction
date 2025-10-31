say 4 Green: +30 seconds of Regen I

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"regen",duration:600}

# Add ascend tag
execute if score #LastConsumeResult game.resources matches 1 run tag @s add Ascend
