
# Playsound
#execute at @a[tag=ConvertingCoinsAlt] run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1

# Give player one Money
execute as @a[tag=ConvertingCoinsAlt] run function exigence:hub/convert_money/give_money

# Update scores
scoreboard players remove Coins CoinsToConvertAlt 5
scoreboard players add CoinsConverted CoinsToConvertAlt 5
scoreboard players add MoneyConverted CoinsToConvertAlt 1

# If not enough remaining, tell raw summary
execute if score Coins CoinsToConvertAlt matches ..4 run tellraw @a [{text:"Converted ",color:"gray"},{"score":{"name":"CoinsConverted","objective":"CoinsToConvertAlt"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"MoneyConverted","objective":"CoinsToConvertAlt"},color:"gold"},{text:" 💎",color:"gold"}]
execute if score Coins CoinsToConvertAlt matches ..4 as @a[tag=ConvertingCoinsAlt,nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run function exigence:hub/convert_money/piggy_bank

# Recurse
execute if score Coins CoinsToConvertAlt matches 5.. run schedule function exigence:hub/convert_money/instant_alt/private/loop 2t append
execute if score Coins CoinsToConvertAlt matches ..4 run tag @a[tag=ConvertingCoinsAlt] remove ConvertingCoinsAlt
