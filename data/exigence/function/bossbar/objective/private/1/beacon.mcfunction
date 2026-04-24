
execute if entity @e[type=minecraft:armor_stand,scores={game.node.node_state=0,node.property.object_level=1},tag=BeaconNode] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" 0/3",color:"gray"}]

execute if entity @e[type=minecraft:armor_stand,scores={game.node.node_state=1,node.property.object_level=1},tag=BeaconNode] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (33%)",color:"gray"}]

execute if entity @e[type=minecraft:armor_stand,scores={game.node.node_state=2,node.property.object_level=1},tag=BeaconNode] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (66%)",color:"gray"}]
