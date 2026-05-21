say [+20 seconds of Clairvoyance for each Aqua ❂ consumed this run]

# Store score for calc and display
scoreboard players operation #temp Temp = aqua.total_consumed game.resources
# Multiply to seconds
scoreboard players operation #temp Temp *= 20 number

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"aqua.total_consumed",objective:"game.resources"},color:"gray"}\
,{text:" ❂ ",color:"aqua"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gray"},{text:" seconds of ",color:"gray"},{text:"Clairvoyance",color:"yellow"}]

# Mulitply to ticks
scoreboard players operation #temp Temp *= 20 number

# Move to data and call macro
execute store result storage exigence:temp duration int 1 run scoreboard players get #temp Temp
execute if score #temp Temp matches 1.. run function exigence:cards/guidance/private/play with storage exigence:temp
