say 2 Green, 2 Red, 2 Aqua: +3 ♻ that failed to play due to lack of resources

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 0 run return 1

# If resources consumed, try recycle up to 3 cards that failed to consume
function exigence:deck/recycle/try_failed_consume
function exigence:deck/recycle/try_failed_consume
function exigence:deck/recycle/try_failed_consume
