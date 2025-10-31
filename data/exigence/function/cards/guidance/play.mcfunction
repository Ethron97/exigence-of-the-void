say [+20 seconds of Clairvoyance for each Aqua ❂ consumed this run]

# Store score for calc and display
execute as @a[tag=PrimaryPlayer] run scoreboard players operation #temp Temp = @s profile.data.resources.cr.consumed_aqua
# Multiply to seconds
scoreboard players operation #temp Temp *= 20 number

# Tellraw how many are dropping
tellraw @a [{text:" - Granting ",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gray"},{text:" seconds of ",color:"gray"},{text:"Clairvoyance",color:"yellow"}]

# Mulitply to ticks
scoreboard players operation #temp Temp *= 20 number

# Move to data and call macro
execute store result storage exigence:temp duration int 1 run scoreboard players get #temp Temp
execute if score #temp Temp matches 1.. run function exigence:cards/guidance/private/play with storage exigence:temp
