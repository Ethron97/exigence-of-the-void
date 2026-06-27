#say [2 Green, 2 Red: +2 Heighten]
function exigence:cards/announce_card

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/heighten/increase_all
execute if score #LastConsumeResult game.resources matches 1 run function exigence:player/effects/heighten/increase_all
