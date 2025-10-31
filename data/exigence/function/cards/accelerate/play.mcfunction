say [2 Aqua: +1 minute of Speed X, where X is 1 higher than the highest speed amplifier you have received this run]

# Manage resources
function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:cards/accelerate/private/trigger
