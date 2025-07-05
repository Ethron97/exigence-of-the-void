# Double check card amounts
data modify storage exigence:hub valid_cards set value true

execute if score Difficulty DungeonRun matches 0 if score CardsTotalCheck DeckAnalysis matches 2.. run data modify storage exigence:hub valid_cards set value false
execute if score Difficulty DungeonRun matches 1 if score CardsTotalCheck DeckAnalysis matches 11.. run data modify storage exigence:hub valid_cards set value false
execute if score Difficulty DungeonRun matches 2 if score CardsTotalCheck DeckAnalysis matches 21.. run data modify storage exigence:hub valid_cards set value false
execute if score Difficulty DungeonRun matches 3 if score CardsTotalCheck DeckAnalysis matches 31.. run data modify storage exigence:hub valid_cards set value false
execute if score Difficulty DungeonRun matches 4 if score CardsTotalCheck DeckAnalysis matches 41.. run data modify storage exigence:hub valid_cards set value false

execute if data storage exigence:hub {valid_cards:false} run tellraw @s {text:"Error: Too many cards",color:"red"}
