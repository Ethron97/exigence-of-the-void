say [1 Green, 1 Red, 1 Aqua: ALL grown bushes gain +2/3 berries, and no new bushes can grow]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:cards/final_harvest/private/trigger
