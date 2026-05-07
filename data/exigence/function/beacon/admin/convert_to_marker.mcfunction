# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT beacon node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=BeaconNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED BEACON NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!BeaconNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-BEACON NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=BeaconNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT BEACON NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["NewNode","Node","BeaconNode"],CustomName:{text:"Marker | BeaconNode",color:"aqua",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BeaconNode <1>",color:"aqua",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BeaconNode <2>",color:"aqua",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BeaconNode <3>",color:"aqua",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BeaconNode <4>",color:"aqua",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Ember @s

# Copy node id and save to data
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.id = @s node.id
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.node_id int 1 run scoreboard players get @s node.id

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode
