# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

execute at @s as @e[distance=..2,type=minecraft:armor_stand,tag=NewNode] run function exigence:bell/node/new_node_data
