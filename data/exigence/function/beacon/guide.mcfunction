# Guides player towards beacon

# AS player
execute at @s[scores={ActiveLevel=1}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=1,NodeState=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={ActiveLevel=2}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=2,NodeState=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={ActiveLevel=3}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=3,NodeState=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={ActiveLevel=4}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=4,NodeState=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3