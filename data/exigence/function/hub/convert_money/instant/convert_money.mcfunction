# Convert money instantly without any sort of animation

# Reset scores
scoreboard players set CoinsConverted CoinsToConvert 0
scoreboard players set MoneyConverted CoinsToConvert 0

# Start recursion
execute if score Coins CoinsToConvert matches 5.. run function exigence:hub/convert_money/instant/private/loop
execute if score Coins CoinsToConvert matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
