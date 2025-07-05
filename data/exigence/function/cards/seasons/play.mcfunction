say 5 Green: +1 ♻

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run function exigence:deck/recycle/try

# Add ascend tag
execute if score LastConsumeResult Resources matches 1 run tag @s add Ascend
