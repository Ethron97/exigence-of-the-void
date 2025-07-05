# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Teleport mirrornode to be looking where player is looking
teleport @e[type=minecraft:armor_stand,tag=NewNode] ~ ~ ~ ~ ~

# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"MirrorNode",color:"gray",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add MirrorNode

# Give glow if debug is on
execute if data storage exigence:debug {mirror:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode