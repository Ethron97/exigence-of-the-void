# Called by game on

# Reset nodes
execute as @e[type=minecraft:armor_stand,tag=BeaconNode] at @s run function exigence:beacon/node/deactivate

# Activate all on active levels
execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={ObjectLevel=1..3}] at @s run function exigence:beacon/node/activate
execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={ObjectLevel=4},limit=1,sort=random] at @s run function exigence:beacon/node/activate
