
# Playsound
execute at @a[tag=ConvertingCoins] run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1

# Give player one Money
execute as @a[tag=ConvertingCoins] run function exigence:hub/convert_money/give_money

# Update scores
scoreboard players remove coins.converting hub.coin_conversion 5
scoreboard players add coins.converted hub.coin_conversion 5
scoreboard players add money.converted hub.coin_conversion 1

# If not enough remaining, tell raw summary
execute if score coins.converting hub.coin_conversion matches ..4 run tellraw @a [{text:"Converted ",color:"gray"},{"score":{"name":"CoinsConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"MoneyConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 💎",color:"gold"}]
execute if score coins.converting hub.coin_conversion matches ..4 as @a[tag=ConvertingCoins,nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run function exigence:hub/convert_money/piggy_bank

# Recurse
execute if score coins.converting hub.coin_conversion matches 5.. run schedule function exigence:hub/convert_money/instant/private/loop 2t append
execute if score coins.converting hub.coin_conversion matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
