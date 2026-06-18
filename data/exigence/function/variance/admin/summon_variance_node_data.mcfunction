# Summon new variance node data

## CONSTRAINTS
#   AS new node

# INPUT
#   INT max_node_state via #temp Temp
#   SCORE #compare node.property.object_level

#====================================================================================================

# Copy score
scoreboard players operation @s node.property.object_level = #compare node.property.object_level
execute store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @s CustomName set value {text:"Marker | VarianceNode <1>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @s CustomName set value {text:"Marker | VarianceNode <2>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @s CustomName set value {text:"Marker | VarianceNode <3>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @s CustomName set value {text:"Marker | VarianceNode <4>",color:"gray",italic:false}

# Add to Variance team for color
team join Variance @s

# Set from data
scoreboard players operation @s node.property.max_node_state = #temp Temp

# Glow if debug on
execute if score toggle.variance debug matches 1 at @s run function exigence:variance/node/debug/on

# Remove local tag
tag @s remove NewMarker