# Spawn coin items in front of player

#say Item smash convert

# Reset scores
scoreboard players set CoinsConverted CoinsToConvert 0
scoreboard players set MoneyConverted CoinsToConvert 0
scoreboard players set SmashBatch CoinConvertMath 0
scoreboard players set LowestSmashBatch CoinConvertMath 0

# Summon ConvertMoneyCoinDisplays iteration function
scoreboard players operation #i CoinsToConvert = Coins CoinsToConvert
execute if score #i CoinsToConvert matches 0 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
execute if score #i CoinsToConvert matches 1.. run function exigence:hub/convert_money/item_smash/private/summon_coin_item
# (Smashing starts once all coins are summoned)