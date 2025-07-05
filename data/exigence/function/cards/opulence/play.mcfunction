say [+2 🍪 for each Green ❂ consumed this run]

# Functionality
scoreboard players set random Random 0
execute as @a[tag=PrimaryPlayer] run scoreboard players operation random Random = @s cr_consumedGreen
scoreboard players operation random Random *= 2 number

# Add to queue
execute store result storage exigence:treasure amount int 1 run scoreboard players get random Random
data modify storage exigence:treasure source set value 'opulance'
function exigence:treasure/queue/add_to_queue with storage exigence:treasure

# Tellraw how many are dropping
tellraw @a [{text:" - Dropping ",color:"gray"},{"score":{"name":"random","objective":"Random"},color:"gray"},{text:" 🍪 Treasure",color:"gold"}]
