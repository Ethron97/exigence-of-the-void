
execute if entity @e[type=armor_stand,tag=BeaconNode,scores={NodeState=0,ObjectLevel=1}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" 0/3",color:"gray"}]

execute if entity @e[type=armor_stand,tag=BeaconNode,scores={NodeState=1,ObjectLevel=1}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (33%)",color:"gray"}]

execute if entity @e[type=armor_stand,tag=BeaconNode,scores={NodeState=2,ObjectLevel=1}] run \
bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (66%)",color:"gray"}]
