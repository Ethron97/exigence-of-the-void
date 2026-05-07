say recode this
return 0

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/admin/new_node

# Give name and tags
execute as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"MenaceNode",color:"dark_purple",italic:false}
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add MenaceNode

# Initialize menace cooldown to 0
scoreboard players set @e[type=minecraft:marker,tag=NewNode] game.node.menace.cooldown 0

# Add to Menace team for color
team join Menace @e[type=minecraft:marker,tag=NewNode]

# If debug, glow
execute if score toggle.menace debug matches 1 as @e[type=minecraft:marker,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:marker,tag=NewNode] remove NewNode