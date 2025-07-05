say 6 Green: +5 🍒. One ravager on each level gets Slowness II.

function exigence:resources/try_consume with storage exigence:resources

# Add effect
execute if score LastConsumeResult Resources matches 1 run function exigence:cards/entangle/private/trigger

