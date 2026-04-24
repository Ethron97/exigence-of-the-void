# With {max_node_state:#}

say Recode this
return 0

# Create a new node with tag "NewMarker"
execute at @s align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Marker"],CustomName:{text:"Marker | ?"}}

# Give name and tags
execute as @e[type=minecraft:marker,tag=NewMarker] run data modify entity @s CustomName set value {text:"Variance",color:"gray",italic:false}
execute as @e[type=minecraft:marker,tag=NewMarker] run tag @s add VarianceNode

# Add to Variance team for color
team join Variance @e[type=minecraft:marker,tag=NewMarker]

# Set from data
$scoreboard players set @e[type=minecraft:marker,tag=NewMarker] node.property.max_node_state $(max_node_state)

# Glow if debug on
execute if data storage exigence:debug {variance:1} as @e[type=minecraft:marker,tag=VarianceNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove local tag
tag @e[type=minecraft:marker,tag=NewMarker] remove NewMarker