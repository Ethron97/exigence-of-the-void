# Convert coins to glint in sets of 5
# Called once at start_convert, then again from tick

## CONSTRAINTS
#   AS player if hub.coin_conversion >= 5

#====================================================================================================

# Playsound
execute at @s run playsound minecraft:block.note_block.bell neutral @s

# Give player one Money
function exigence:hub/convert_money/give_money

# Update scores
scoreboard players remove @s hub.coin_conversion 5
scoreboard players add @s hub.coin_conversion.coins_converted 5
scoreboard players add @s hub.coin_conversion.money_converted 1

# Drop temp coins in front of player
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 as @e[type=minecraft:item,distance=..1] if items entity @s contents gold_nugget[custom_data~{convert_coin:true}] run function exigence:hub/convert_money/quick/private/convert_coin_data

# Update title
title @s subtitle [{text:"",color:"gray"},{"score":{"name":"@s","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"-> ",color:"gray"}\
,{"score":{"name":"@s","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}]
title @s title ""

# If not enough remaining, tellraw summary
execute if score @s hub.coin_conversion matches ..4 run function exigence:hub/convert_money/quick/private/done_converting
