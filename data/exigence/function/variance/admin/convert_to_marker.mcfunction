# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT variance node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=VarianceNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED VARIANCE NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!VarianceNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-VARIANCE NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=VarianceNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT VARIANCE NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","VarianceNode"],CustomName:{text:"Marker | VarianceNode",color:"gray",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VarianceNode <1>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VarianceNode <2>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VarianceNode <3>",color:"gray",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | VarianceNode <4>",color:"gray",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Variance @s

# Copy max node state and save to data
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.max_node_state = @s node.property.max_node_state
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.max_node_state int 1 run scoreboard players get @s node.property.max_node_state

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode