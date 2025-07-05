say [2 Green, 2 Red: +2 Heighten]

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/heighten/increase
execute if score LastConsumeResult Resources matches 1 run function exigence:player/effects/heighten/increase
