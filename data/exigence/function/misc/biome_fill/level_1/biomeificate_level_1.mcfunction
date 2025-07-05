# Iterate over each block above level 1 and iterate downward

#kill @e[type=minecraft:marker,tag=Biomeifier]
#summon minecraft:marker -261 70 -100 {Tags:["Biomeifier"]}

scoreboard players set #x Temp 0
scoreboard players set #z Temp 0

#execute positioned -271 70 -111 run 
execute positioned ~ ~ ~ run function exigence:misc/biome_fill/level_1/loop
