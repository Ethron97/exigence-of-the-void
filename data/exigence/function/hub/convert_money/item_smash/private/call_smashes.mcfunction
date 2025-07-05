# Smash 5 random coins together
#say Call smashes

# If there are not at least 5 coins, end and return
#execute unless score Coins CoinsToConvert matches 5.. run say Not enough to smash
execute unless score Coins CoinsToConvert matches 5.. run schedule function exigence:hub/convert_money/item_smash/private/fin_smashing 20t
execute unless score Coins CoinsToConvert matches 5.. run return 1

# Select 5 coins to smash
tag @e[type=minecraft:item,tag=ConvertMoneyCoinItem,limit=5,sort=random,tag=!Smashing] add NewSmashing

execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run function exigence:misc/update_coords

tag @e[type=minecraft:item,tag=NewSmashing] add Smashing

scoreboard players remove Coins CoinsToConvert 5
scoreboard players add CoinsConverted CoinsToConvert 5
scoreboard players add MoneyConverted CoinsToConvert 1

# Assign smash batch
#   Increment smash batch by 1
scoreboard players add SmashBatch CoinConvertMath 1
scoreboard players operation @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] SmashBatch = SmashBatch CoinConvertMath

# Get average x and y
scoreboard players set average_x CoinConvertMath 0
scoreboard players set average_z CoinConvertMath 0
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run scoreboard players operation average_x CoinConvertMath += @s X
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run scoreboard players operation average_z CoinConvertMath += @s Z
#scoreboard players operation average_x CoinConvertMath /= 100 number
#scoreboard players operation average_z CoinConvertMath /= 100 number
scoreboard players operation average_x CoinConvertMath /= 5 number
scoreboard players operation average_z CoinConvertMath /= 5 number

# Smash em
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run function exigence:hub/convert_money/item_smash/private/smash

# Remove local tag
tag @e[type=minecraft:item,tag=NewSmashing] remove NewSmashing

# Iterate, increase speed based on how many have already been converted
execute if score MoneyConverted CoinsToConvert matches 0..3 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 11t append
execute if score MoneyConverted CoinsToConvert matches 4 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 10t append
execute if score MoneyConverted CoinsToConvert matches 5 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 9t append
execute if score MoneyConverted CoinsToConvert matches 6 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 8t append
execute if score MoneyConverted CoinsToConvert matches 7 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 7t append
execute if score MoneyConverted CoinsToConvert matches 8 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 6t append
execute if score MoneyConverted CoinsToConvert matches 9 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 5t append
execute if score MoneyConverted CoinsToConvert matches 10 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 4t append
execute if score MoneyConverted CoinsToConvert matches 11 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 3t append
execute if score MoneyConverted CoinsToConvert matches 12.. run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 2t append
