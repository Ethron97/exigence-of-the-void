say [+2 🍪 for each Green ❂ consumed this run]

# Functionality
scoreboard players set #temp Temp 0
scoreboard players operation #temp Temp = green.total_consumed game.resources

# 2 treasure per green
scoreboard players operation #temp Temp *= 2 number

# Add to queue
execute store result storage exigence:treasure amount int 1 run scoreboard players get #temp Temp
data modify storage exigence:treasure source set value 'opulance'
function exigence:treasure/queue/add_to_queue with storage exigence:treasure

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"green.total_consumed",objective:"game.resources"},color:"gray"}\
,{text:" ❂ ",color:"dark_green"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gray"},{text:" 🍪",color:"gold"}]
