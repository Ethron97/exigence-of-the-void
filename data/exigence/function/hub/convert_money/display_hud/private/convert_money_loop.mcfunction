#say Convert money loop

# Kill spiral coins in the center
kill @e[type=minecraft:item_display,tag=ConvertMoneyCoinDisplay,tag=Spiral,scores={HoldingRingRadius=18..}]

# Give player one Money
execute as @a[tag=ConvertingCoins] run function exigence:hub/convert_money/give_money

# playsound
execute at @a[tag=ConvertingCoins] positioned ^ ^3 ^3 run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1

scoreboard players remove coins.converting hub.coin_conversion 5
scoreboard players add coins.converted hub.coin_conversion 5
scoreboard players add money.converted hub.coin_conversion 1

# If hub.coin_conversion >= 5, iterate on this function
#execute if score coins.converting hub.coin_conversion matches 5.. run schedule function exigence:hub/convert_money/private/start_money_loop 1t append
#execute if score coins.converting hub.coin_conversion matches 15.. run schedule function exigence:hub/convert_money/private/start_money_loop 10t append

# If hub.coin_conversion < 5, kill in a second
execute if score coins.converting hub.coin_conversion matches 1..4 run function exigence:hub/convert_money/display_hud/private/burn_leftovers
execute if score coins.converting hub.coin_conversion matches ..4 run tellraw @a [{text:"Converted ",color:"gray"},{"score":{"name":"CoinsConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"MoneyConverted","objective":"CoinsToConvert"},color:"gold"},{text:" 💎",color:"gold"}]
execute if score coins.converting hub.coin_conversion matches ..4 as @a[tag=ConvertingCoins,nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run function exigence:hub/convert_money/piggy_bank
execute if score coins.converting hub.coin_conversion matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins