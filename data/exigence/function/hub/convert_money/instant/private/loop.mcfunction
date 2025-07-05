
# Playsound
execute at @a[tag=ConvertingCoins] run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1

# Give player one Money
execute as @a[tag=ConvertingCoins] run function exigence:hub/convert_money/give_money

# Update scores
scoreboard players remove Coins CoinsToConvert 5
scoreboard players add CoinsConverted CoinsToConvert 5
scoreboard players add MoneyConverted CoinsToConvert 1

# If not enough remaining, tell raw summary
execute if score Coins CoinsToConvert matches ..4 run tellraw @a [{text:"Converted ",color:"gray"},{"score":{"name":"CoinsConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"MoneyConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 💎",color:"gold"}]
execute if score Coins CoinsToConvert matches ..4 as @a[tag=ConvertingCoins,nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run function exigence:hub/convert_money/piggy_bank

# Recurse
execute if score Coins CoinsToConvert matches 5.. run schedule function exigence:hub/convert_money/instant/private/loop 2t append
execute if score Coins CoinsToConvert matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
