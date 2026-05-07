# Guides player towards beacon

## CONSTRAINTS
#   AS player

#====================================================================================================

## SWITCH
execute at @s[scores={game.player.active_level=1}] run return run execute anchored eyes facing entity @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1,game.node.node_state=0},tag=BeaconNode] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=2}] run return run execute anchored eyes facing entity @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2,game.node.node_state=0},tag=BeaconNode] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=3}] run return run execute anchored eyes facing entity @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3,game.node.node_state=0},tag=BeaconNode] eyes run particle minecraft:soul_fire_flame ^ ^ ^3
execute at @s[scores={game.player.active_level=4}] run return run execute anchored eyes facing entity @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4,game.node.node_state=0},tag=BeaconNode] eyes run particle minecraft:soul_fire_flame ^ ^ ^3