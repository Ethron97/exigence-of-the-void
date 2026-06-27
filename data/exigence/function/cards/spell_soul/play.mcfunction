#say Consume all Aqua. Spellbind 1 for each Aqua consumed
function exigence:cards/announce_card

# How much aqua is there?
scoreboard players operation #aqua_current Temp = aqua.current game.resources

# Consume switch to successfully consume the exact amount of Aqua that we have
execute if score aqua.current game.resources matches 1 run function exigence:resources/try_consume {green:0,red:0,aqua:1}
execute if score aqua.current game.resources matches 2 run function exigence:resources/try_consume {green:0,red:0,aqua:2}
execute if score aqua.current game.resources matches 3 run function exigence:resources/try_consume {green:0,red:0,aqua:3}
execute if score aqua.current game.resources matches 4 run function exigence:resources/try_consume {green:0,red:0,aqua:4}
execute if score aqua.current game.resources matches 5 run function exigence:resources/try_consume {green:0,red:0,aqua:5}
execute if score aqua.current game.resources matches 6 run function exigence:resources/try_consume {green:0,red:0,aqua:6}
execute if score aqua.current game.resources matches 7 run function exigence:resources/try_consume {green:0,red:0,aqua:7}
execute if score aqua.current game.resources matches 8 run function exigence:resources/try_consume {green:0,red:0,aqua:8}
execute if score aqua.current game.resources matches 9 run function exigence:resources/try_consume {green:0,red:0,aqua:9}

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"#aqua_current",objective:"Temp"},color:"gray"}\
,{text:" ❂ ",color:"aqua"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#aqua_current","objective":"Temp"},color:"gray"},{text:" 🧾",color:"dark_purple"}]

execute if score #aqua_current Temp matches 1.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 2.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 3.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 4.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 5.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 6.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 7.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 8.. run function exigence:deck/spellbind/try
execute if score #aqua_current Temp matches 9.. run function exigence:deck/spellbind/try
