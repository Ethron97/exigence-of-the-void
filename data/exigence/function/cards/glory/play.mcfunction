say [+3 🔥 for each Red ❂ consumed this run]

# Functionality
scoreboard players set #temp Temp 0
scoreboard players operation #temp Temp = red.total_consumed game.resources

# 3 ember per red
scoreboard players operation #temp Temp *= 3 number
scoreboard players operation ember.queue game.dungeon.temp += #temp Temp

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"red.total_consumed",objective:"game.resources"},color:"gray"}\
,{text:" ❂ ",color:"dark_red"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gray"},{text:" 🔥",color:"aqua"}]
