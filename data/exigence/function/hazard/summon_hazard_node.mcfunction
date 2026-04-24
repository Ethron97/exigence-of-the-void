say recode this
return 0

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/admin/new_marker

# Give name and tags
execute if score @s node.property.object_level matches 1 as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"HazardNodeL1",color:"red",italic:false}
execute if score @s node.property.object_level matches 2 as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"HazardNodeL2",color:"red",italic:false}
execute if score @s node.property.object_level matches 3 as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"HazardNodeL3",color:"red",italic:false}
execute if score @s node.property.object_level matches 4 as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"HazardNodeL4",color:"red",italic:false}
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add HazardNode

# Add to Hazard team for color
team join Hazard @e[type=minecraft:marker,tag=NewNode]

# Glow if debiug
execute if data storage exigence:debug {hazard:1} as @e[type=minecraft:marker,tag=HazardNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewTreasureNode" tag
tag @e[type=minecraft:marker,tag=NewNode] remove NewNode