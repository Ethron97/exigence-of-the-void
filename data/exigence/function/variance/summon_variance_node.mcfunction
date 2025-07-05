# With {max_node_state:#}

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"Variance",color:"gray",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add VarianceNode

# Add to Variance team for color
team join Variance @e[type=minecraft:armor_stand,tag=NewNode]

# Set from data
$scoreboard players set @e[type=minecraft:armor_stand,tag=NewNode] MaxNodeState $(max_node_state)

# Glow if debug on
execute if data storage exigence:debug {variance:1} as @e[type=minecraft:armor_stand,tag=VarianceNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode