# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add TreasureNode
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add TreasureNodeWalk
$execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"TreasureNode$(radius)",color:"gold",italic:false}

# Add to Treasure team for color
team join Treasure @e[type=minecraft:armor_stand,tag=NewNode]

# Set treasure radius score
$scoreboard players set @e[type=minecraft:armor_stand,tag=NewNode] TreasureRadius $(radius)

# If treasure debug is on, create bb and glow armorstand
execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode