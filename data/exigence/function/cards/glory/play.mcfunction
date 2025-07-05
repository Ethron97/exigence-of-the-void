say [+3 🔥 for each Red ❂ consumed this run]

# Functionality
scoreboard players set random Random 0
execute as @a[tag=PrimaryPlayer] run scoreboard players operation random Random = @s cr_consumedRed
scoreboard players operation random Random *= 3 number
scoreboard players operation EmberQueue DungeonRun += random Random

# Tellraw how many are dropping
#tellraw @a [{text:" - Dropping ",color:"gray"},{"score":{"name":"random","objective":"Random"},color:"gray"},{text:" 🔥",color:"aqua"}]
