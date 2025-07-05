# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"TodoNode",color:"dark_aqua",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add TodoNode

# Add to Green team for color
team join Player @e[type=minecraft:armor_stand,tag=NewNode]

# Glow if debug on
execute if data storage exigence:debug {todo:1} as @e[type=minecraft:armor_stand,tag=TodoNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode
