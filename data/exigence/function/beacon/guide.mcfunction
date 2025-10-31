# Guides player towards beacon

# AS player
execute at @s[scores={game.player.active_level=1}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=1,game.node.node_state=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=2}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=2,game.node.node_state=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=3}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=3,game.node.node_state=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=4}] anchored eyes facing entity @e[type=armor_stand,tag=BeaconNode,scores={ObjectLevel=4,game.node.node_state=0}] eyes run particle minecraft:soul_fire_flame ^ ^ ^3