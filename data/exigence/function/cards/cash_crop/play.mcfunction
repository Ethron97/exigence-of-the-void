say Consume half of the berries in your inventory. Gain +3 🍪 per berry consumed.

# Convert crops
execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:cards/cash_crop/convert_crops

# Multiply by 3 to get treasure to add
scoreboard players operation #cash Temp = #highest_berries Temp
scoreboard players operation #cash Temp *= 3 number

# Add treasure
execute store result storage exigence:treasure amount int 1 run scoreboard players get #cash Temp
data modify storage exigence:treasure source set value 'cash_crop'
function exigence:treasure/queue/add_to_queue with storage exigence:treasure

# Tellraw actual amount added
tellraw @a [{text:"-",color:"gray"},{"score":{"name":"#highest_berries","objective":"Temp"},color:"gray"},{text:" 🍒",color:"dark_green"}\
,{text:": +",color:"gray"},{"score":{"name":"#cash","objective":"Temp"},color:"gray"},{text:" 🍪 Treasure",color:"gold"}]
