# Adds to treasure queue

## INPUT
#   STR source
#       Either "passive" or from card name
#       ie "treasure_hunter", "circulation" etc
#   INT amount

#================================================================================================================

# Initialize loop variable
$scoreboard players set #i Temp $(amount)

# Add to treasure score
scoreboard players operation TreasureQueue DungeonRun += #i Temp

# Iteratively add to queue
$execute if score #i Temp matches 1.. run function exigence:treasure/queue/add_to_queue_loop {source:$(source)}
