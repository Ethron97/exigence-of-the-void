say [6 Green: +2 minutes of Invisibility, Regeneration, and Beastsense]

function exigence:resources/try_consume with storage exigence:resources

# Add effect
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"beastsense",duration:2400}
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"invisibility",duration:2400}
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"regeneration",duration:2400}
