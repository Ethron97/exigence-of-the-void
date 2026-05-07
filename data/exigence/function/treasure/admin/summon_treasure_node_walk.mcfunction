say Recode this
return 0

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/admin/new_node

execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add TreasureNode
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add TreasureNodeWalk
$execute as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"TreasureNode$(radius)",color:"gold",italic:false}

# Add to Treasure team for color
team join Treasure @e[type=minecraft:marker,tag=NewNode]

# Set treasure radius score
$scoreboard players set @e[type=minecraft:marker,tag=NewNode] node.property.treasure.radius $(radius)

# If treasure debug is on, create bb and glow armorstand
execute if score toggle.treasure debug matches 1 as @e[type=minecraft:marker,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:marker,tag=NewNode] remove NewNode