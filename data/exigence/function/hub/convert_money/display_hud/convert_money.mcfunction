# Call as player
# BEFORE CALL: RUN THIS COMMAND:
# execute store result score Coins CoinsToConvert run clear @s minecraft:gold_nugget
# This is so we can call this either from win or loss (with coin keep)
# ALSO give payer ConvertingCoins tag

# Reset scores
scoreboard players set CoinsConverted CoinsToConvert 0
scoreboard players set MoneyConverted CoinsToConvert 0

# Get even spacing adjustment
scoreboard players set #spacing CoinsToConvert 360
scoreboard players operation #spacing CoinsToConvert /= Coins CoinsToConvert

# Summon ConvertMoneyCoinDisplays iteration function
scoreboard players operation #i CoinsToConvert = Coins CoinsToConvert
execute if score #i CoinsToConvert matches 1.. run function exigence:hub/convert_money/display_hud/private/summon_coin_display

# Scheduling at increasingly close intervals for each batch of 5 coins to convert
execute if score Coins CoinsToConvert matches 1..4 run schedule function exigence:hub/convert_money/display_hud/private/burn_leftovers 20t append
execute if score Coins CoinsToConvert matches 5.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 20t append
execute if score Coins CoinsToConvert matches 10.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 38t append
execute if score Coins CoinsToConvert matches 15.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 54t append
execute if score Coins CoinsToConvert matches 20.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 68t append
execute if score Coins CoinsToConvert matches 25.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 80t append
execute if score Coins CoinsToConvert matches 30.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 90t append
execute if score Coins CoinsToConvert matches 35.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 98t append
execute if score Coins CoinsToConvert matches 40.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 105t append
execute if score Coins CoinsToConvert matches 45.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 110t append
execute if score Coins CoinsToConvert matches 50.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 115t append
execute if score Coins CoinsToConvert matches 55.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 120t append
execute if score Coins CoinsToConvert matches 60.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 125t append
execute if score Coins CoinsToConvert matches 65.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 130t append
execute if score Coins CoinsToConvert matches 70.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 135t append
execute if score Coins CoinsToConvert matches 75.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 140t append
execute if score Coins CoinsToConvert matches 80.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 145t append
execute if score Coins CoinsToConvert matches 85.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 150t append
execute if score Coins CoinsToConvert matches 90.. run schedule function exigence:hub/convert_money/display_hud/private/start_money_loop 155t append
