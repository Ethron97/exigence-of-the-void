execute store result score x TempCoords run data get entity @e[type=minecraft:armor_stand,tag=ExitNode,limit=1] Pos[0]
execute store result score y TempCoords run data get entity @e[type=minecraft:armor_stand,tag=ExitNode,limit=1] Pos[1]
execute store result score z TempCoords run data get entity @e[type=minecraft:armor_stand,tag=ExitNode,limit=1] Pos[2]
execute store result storage exigence:compass x int 1 run scoreboard players get x TempCoords
execute store result storage exigence:compass y int 1 run scoreboard players get y TempCoords
execute store result storage exigence:compass z int 1 run scoreboard players get z TempCoords
data modify storage exigence:compass name set value [{text:"Return Compass",color:"green",italic:false}]

data modify storage exigence:compass lore set value []
data modify storage exigence:compass lore append value [{text:"Points towards the entrance of the Ruins of Solstice",color:"gray",italic:false}]
data modify storage exigence:compass lore append value [{text:"(Soulbound)",color:"dark_gray",italic:false}]