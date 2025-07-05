# Assign data after summoning new node

## CONSTRAINTS
#   AS NewNode

#====================================================================================================

# Add tag
tag @s add BerryNode

# Give custom name
data modify entity @s CustomName set value {text:"BerryNode",color:"green",italic:false}

# Assign team
team join Botany @s

# If debug, glow
execute if data storage exigence:debug {berry:1} run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @s remove NewNode
