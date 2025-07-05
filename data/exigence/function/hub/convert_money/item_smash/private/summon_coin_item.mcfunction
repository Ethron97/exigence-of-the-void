#say Summon coin item

#execute as @a[tag=ConvertingCoins] at @s anchored eyes run summon item ^ ^ ^ {PickupDelay:32767,Tags:["ConvertMoneyCoinItem","NewCMCI","UpdateCoords"],Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":{"strings":["coin"]},"minecraft:max_stack_size":1}}}
execute as @a[tag=ConvertingCoins] at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin

# If there are at least 2 coins to convert, and there were 32.. total, convert another
execute if score Coins CoinsToConvert matches 32.. if score #i CoinsToConvert matches 2.. run execute as @a[tag=ConvertingCoins] at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin

# If there were at least 3 coins to convert, and there were 100.. otal, convert another
execute if score Coins CoinsToConvert matches 100.. if score #i CoinsToConvert matches 3.. run execute as @a[tag=ConvertingCoins] at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin


# Playsound
execute as @a[tag=ConvertingCoins] at @s anchored eyes positioned ^ ^ ^3 run playsound minecraft:block.note_block.bell neutral @a

# Add tags
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{convert_coin:"true"}}}}] run function exigence:hub/convert_money/item_smash/private/summon_coin_item_data

# Reduce iteration score by 1
execute if score Coins CoinsToConvert matches 100.. if score #i CoinsToConvert matches 3.. run scoreboard players remove #i CoinsToConvert 1
execute if score Coins CoinsToConvert matches 32.. if score #i CoinsToConvert matches 2.. run scoreboard players remove #i CoinsToConvert 1
scoreboard players remove #i CoinsToConvert 1

# Iterate if score is greater than 0, faster if there are more total coins
execute if score #i CoinsToConvert matches 1.. if score Coins CoinsToConvert matches 1..14 run schedule function exigence:hub/convert_money/item_smash/private/summon_coin_item 2t append
execute if score #i CoinsToConvert matches 1.. if score Coins CoinsToConvert matches 15.. run schedule function exigence:hub/convert_money/item_smash/private/summon_coin_item 1t append

# If all coins summoned, start smashing
execute if score #i CoinsToConvert matches 0 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 20t append
# Unless it was less than 5 total... then just remove the tag
execute if score #i CoinsToConvert matches 0 if score Coins CoinsToConvert matches ..4 run tag @a[tag=ConvertingCoins] remove ConvertingCoins
