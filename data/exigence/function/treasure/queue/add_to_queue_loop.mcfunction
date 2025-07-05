# Adds to treasure queue 1 at a time

## INPUT
#   STR source
#       Either "passive" or from card name
#       ie "treasure_hunter", "circulation" etc

#================================================================================================================

# Append to queue
$data modify storage exigence:treasure queue append value $(source)

# Remove 1 from i and continue if > 0
scoreboard players remove #i Temp 1
$execute if score #i Temp matches 1.. run function exigence:treasure/queue/add_to_queue_loop {source:$(source)}
