# Tick the conversion 1

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. run tellraw @s [{text:"(D4 Player) Convert coin (slow) : @s : "},{score:{name:"@s",objective:"hub.coin_conversion"}}]

# Update scores
scoreboard players remove @s hub.coin_conversion 1
scoreboard players add @s hub.coin_conversion.coins_converted 1

# Playsound
execute at @s run playsound minecraft:block.note_block.bell neutral @s

# Drop temp coin in front of player
execute at @s anchored eyes positioned ^ ^ ^3 run loot spawn ~ ~ ~ loot exigence:convert_coin
execute at @s anchored eyes positioned ^ ^ ^3 as @e[type=minecraft:item,distance=..1] if items entity @s contents gold_nugget[custom_data~{convert_coin:true}] run function exigence:hub/convert_money/slow/private/convert_coin_data

# If coins_converted % 5 = 0, give money
scoreboard players operation #temp Temp = @s hub.coin_conversion.coins_converted
scoreboard players operation #temp Temp %= 5 number
execute if score #temp Temp matches 0 run function exigence:hub/convert_money/slow/private/convert_money

# Update title
title @s subtitle [{text:"",color:"gray"},{"score":{"name":"@s","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"-> ",color:"gray"}\
,{"score":{"name":"@s","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}]
title @s title ""

# If not enough remaining, end
execute if score @s hub.coin_conversion <= 0 number run function exigence:hub/convert_money/slow/private/done_converting
