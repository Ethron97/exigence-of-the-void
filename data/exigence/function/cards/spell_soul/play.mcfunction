say Consume all Aqua. Spellbind 1 for each Aqua consumed

# How much aqua is there?
scoreboard players operation random Random = Aqua Resources

# Consume switch to successfully consume the exact amount of Aqua that we have
execute if score Aqua Resources matches 1 run function exigence:resources/try_consume {green:0,red:0,aqua:1}
execute if score Aqua Resources matches 2 run function exigence:resources/try_consume {green:0,red:0,aqua:2}
execute if score Aqua Resources matches 3 run function exigence:resources/try_consume {green:0,red:0,aqua:3}
execute if score Aqua Resources matches 4 run function exigence:resources/try_consume {green:0,red:0,aqua:4}
execute if score Aqua Resources matches 5 run function exigence:resources/try_consume {green:0,red:0,aqua:5}
execute if score Aqua Resources matches 6 run function exigence:resources/try_consume {green:0,red:0,aqua:6}
execute if score Aqua Resources matches 7 run function exigence:resources/try_consume {green:0,red:0,aqua:7}
execute if score Aqua Resources matches 8 run function exigence:resources/try_consume {green:0,red:0,aqua:8}
execute if score Aqua Resources matches 9 run function exigence:resources/try_consume {green:0,red:0,aqua:9}

execute if score random Random matches 1.. run function exigence:deck/spellbind/try
execute if score random Random matches 2.. run function exigence:deck/spellbind/try
execute if score random Random matches 3.. run function exigence:deck/spellbind/try
execute if score random Random matches 4.. run function exigence:deck/spellbind/try
execute if score random Random matches 5.. run function exigence:deck/spellbind/try
execute if score random Random matches 6.. run function exigence:deck/spellbind/try
execute if score random Random matches 7.. run function exigence:deck/spellbind/try
execute if score random Random matches 8.. run function exigence:deck/spellbind/try
execute if score random Random matches 9.. run function exigence:deck/spellbind/try

# Display
tellraw @a [{text:"   Consumed ",color:"gray"},{"score":{"name":"random","objective":"Random"},color:"gray"},{text:" ❂",color:"aqua"}\
,{text:" for ",color:"gray"},{"score":{"name":"random","objective":"Random"},color:"gray"},{text:" 🧾",color:"dark_purple"}]
