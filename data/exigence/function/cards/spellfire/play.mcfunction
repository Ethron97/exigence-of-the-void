say 1 Aqua: +2 🧾 (Spellbind)

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run function exigence:deck/spellbind/try
execute if score LastConsumeResult Resources matches 1 run function exigence:deck/spellbind/try
