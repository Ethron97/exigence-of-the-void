say 2 Green: +1 ♻

function exigence:resources/try_consume with storage exigence:resources
execute if score #LastConsumeResult game.resources matches 1 run function exigence:deck/recycle/try
