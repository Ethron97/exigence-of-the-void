# In-between function that randomizes if treasure happens.
# Only gets called if TreasureQueue is 1..
# - Primarily to simulate effects that reduce the chance of treasure, such as the Scout card

# Reduce TreasureQueue by 1, regardless of whether treasure gets resolved
scoreboard players remove TreasureQueue DungeonRun 1

# Return if there is nothing in the data queue
execute unless data storage exigence:treasure queue[0] run say No data in the treasure queue?
execute unless data storage exigence:treasure queue[0] run return 1

execute store result score random Random run random value 1..100
execute if score DifficultyMod DungeonRun matches 0.. run function exigence:treasure/resolve_treasure
execute if score DifficultyMod DungeonRun matches -1 if score random Random matches 11..100 run function exigence:treasure/resolve_treasure
execute if score DifficultyMod DungeonRun matches -2 if score random Random matches 21..100 run function exigence:treasure/resolve_treasure
execute if score DifficultyMod DungeonRun matches -3 if score random Random matches 31..100 run function exigence:treasure/resolve_treasure

# Debug
#execute if score DifficultyMod DungeonRun matches -1 if score random Random matches 1..10 run say Treasure skip
#execute if score DifficultyMod DungeonRun matches -2 if score random Random matches 1..20 run say Treasure skip
#execute if score DifficultyMod DungeonRun matches -3 if score random Random matches 1..30 run say Treasure skip

# Clear first element in the TreasureQueue
data remove storage exigence:treasure queue[0]
