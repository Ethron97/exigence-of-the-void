say [1 Aqua: Spellbind 1 Legendary Card]

function exigence:resources/try_consume with storage exigence:resources

execute if score LastConsumeResult Resources matches 1 run function exigence:deck/spellbind/try_4
