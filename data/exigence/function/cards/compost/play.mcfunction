#say +2 🍒 for each ♻ this run
function exigence:cards/announce_card

# Reset score
scoreboard players set #recycled Temp 0

# Add for each card recycled
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=Recycled] run scoreboard players add #recycled Temp 1

# Multiply by 2
scoreboard players operation #add_berries Temp = #recycled Temp
scoreboard players operation #add_berries Temp *= 2 number

# Add to berry queue
scoreboard players operation berry.queue game.dungeon.temp += #add_berries Temp

# Tellraw feedback
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:"gray"},{score:{name:"#recycled",objective:"Temp"},color:"green"}\
,{text:" ♻ ",color:"green"},{text:"-> ",color:"yellow"}\
,{text:"+",color:"gray"},{"score":{"name":"#add_berries","objective":"Temp"},color:"gray"},{text:" 🍒",color:"dark_green"}]
