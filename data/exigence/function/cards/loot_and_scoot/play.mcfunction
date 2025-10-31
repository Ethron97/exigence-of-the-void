say [1 Red: +30s Speed II, +7 🍪]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:treasure/queue/add_to_queue {source:"loot_and_scoot",amount:7}
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:600}