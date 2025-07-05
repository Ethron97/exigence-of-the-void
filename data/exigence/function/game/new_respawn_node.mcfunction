# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"Respawn",color:"green",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add RespawnNode
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add Debug

# Add to Green team for color
team join Green @e[type=minecraft:armor_stand,tag=NewNode]

# Glow if debug on
execute if data storage exigence:dungeon {debug:1} as @e[type=minecraft:armor_stand,tag=RespawnNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode
