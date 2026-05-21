# Called from play if resources successful

# Store number spellbound
execute as @a[tag=ActivePlayer] run scoreboard players operation #spellbound Temp = @s profile.data.deck.cr.cards_spellbound

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"#spellbound",objective:"Temp"},color:"gray"}\
,{text:" 🧾 ",color:"dark_purple"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#spellbound","objective":"Temp"},color:"gray"},{text:" ♻",color:"green"}]

# Call recycles for each card spellbound
execute if score #spellbound Temp matches 1.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 2.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 3.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 4.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 5.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 6.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 7.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 8.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 9.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 10.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 11.. run return 0
#----------------------------------------------------------------------------------------------------
execute if score #spellbound Temp matches 11.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 12.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 13.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 14.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 15.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 16.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 17.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 18.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 19.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 20.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 21.. run return 0
#----------------------------------------------------------------------------------------------------
execute if score #spellbound Temp matches 21.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 22.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 23.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 24.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 25.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 26.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 27.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 28.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 29.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 30.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 31.. run return 0
#----------------------------------------------------------------------------------------------------
execute if score #spellbound Temp matches 31.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 32.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 33.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 34.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 35.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 36.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 37.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 38.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 39.. run function exigence:deck/recycle/try
execute if score #spellbound Temp matches 40.. run function exigence:deck/recycle/try
