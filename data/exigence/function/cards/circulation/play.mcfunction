say 1 Aqua: For 1 minute, gain +1 🍪 whenever you pick up a coin 🔘

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/add_effect_time_card {effect:"circulation",duration:1200}
