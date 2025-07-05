# With {door_name:""}

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Add door tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add DoorNode

# Modify name
$execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"Door $(door_name)",color:"yellow",italic:false}

# Add to Special team for color
team join Special @e[type=minecraft:armor_stand,tag=NewNode]

# If debug, glow
execute if data storage exigence:debug {door:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode