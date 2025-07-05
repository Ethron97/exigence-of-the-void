say 4 Green: +2 ♻

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run function exigence:deck/recycle/try
execute if score LastConsumeResult Resources matches 1 run function exigence:deck/recycle/try
