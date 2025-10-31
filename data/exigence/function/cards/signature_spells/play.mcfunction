say [4 Aqua: Spellbind 3 Uncommon cards]

# Consume resources
function exigence:resources/try_consume with storage exigence:resources

# Return if consume failed
execute if score #LastConsumeResult game.resources matches 0 run return 0

# Try to spellbind 3 uncommon cards
function exigence:deck/spellbind/try_2
function exigence:deck/spellbind/try_2
function exigence:deck/spellbind/try_2
