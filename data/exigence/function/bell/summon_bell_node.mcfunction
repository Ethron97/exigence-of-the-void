# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/admin/new_node

execute at @s as @e[type=minecraft:armor_stand,tag=NewNode,distance=..2] run function exigence:bell/node/new_node_data
