#say 4 Green: +2 ♻
function exigence:cards/announce_card

function exigence:resources/try_consume with storage exigence:resources
execute if score #LastConsumeResult game.resources matches 1 run function exigence:deck/recycle/try
execute if score #LastConsumeResult game.resources matches 1 run function exigence:deck/recycle/try
