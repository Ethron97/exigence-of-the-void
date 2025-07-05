#say Fin smashing

# Tellraw results
tellraw @a [{text:"Converted ",color:"gray"},{"score":{"name":"CoinsConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"MoneyConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 💎",color:"gold"}]

# Piggy bank
execute as @a[tag=ConvertingCoins,nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run function exigence:hub/convert_money/piggy_bank

# Particle on leftover coins
execute at @e[type=minecraft:item,tag=ConvertMoneyCoinItem] run particle minecraft:item{item:{id:"minecraft:gold_nugget"}} ~ ~ ~ 0 0 0 0.1 3

# Kill leftover coins
kill @e[type=minecraft:item,tag=ConvertMoneyCoinItem]

# Remove converting coins tag
tag @a[tag=ConvertingCoins] remove ConvertingCoins
