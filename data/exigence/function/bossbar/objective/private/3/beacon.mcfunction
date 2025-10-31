
execute if entity @e[type=armor_stand,tag=BeaconNode,scores={game.node.node_state=0,ObjectLevel=3}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:"",color:"gray"}]

execute if entity @e[type=armor_stand,tag=BeaconNode,scores={game.node.node_state=1,ObjectLevel=3}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (33%)",color:"gray"}]

execute if entity @e[type=armor_stand,tag=BeaconNode,scores={game.node.node_state=2,ObjectLevel=3}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (66%)",color:"gray"}]
