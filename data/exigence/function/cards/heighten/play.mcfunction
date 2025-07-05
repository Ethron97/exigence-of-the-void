say [1 Green, 1 Red: +1 Heighten]

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/heighten/increase
