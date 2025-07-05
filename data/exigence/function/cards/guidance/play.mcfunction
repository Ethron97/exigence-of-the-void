say [+20 seconds of Clairvoyance for each Aqua ❂ consumed this run]

# Store score for calc and display
execute as @a[tag=PrimaryPlayer] run scoreboard players operation duration Temp = @s cr_consumedAqua
# Multiply to seconds
scoreboard players operation duration Temp *= 20 number

# Tellraw how many are dropping
tellraw @a [{text:" - Granting ",color:"gray"},{"score":{"name":"duration","objective":"Temp"},color:"gray"},{text:" seconds of ",color:"gray"},{text:"Clairvoyance",color:"yellow"}]

# Mulitply to ticks
scoreboard players operation duration Temp *= 20 number

# Move to data and call macro
execute store result storage exigence:temp duration int 1 run scoreboard players get duration Temp
execute if score duration Temp matches 1.. run function exigence:cards/guidance/private/play with storage exigence:temp

