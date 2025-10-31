say [1 Aqua: Spellbind 1 Common Card]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:deck/spellbind/try_1
