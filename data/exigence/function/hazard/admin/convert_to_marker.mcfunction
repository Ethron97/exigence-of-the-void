# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT hazard node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=HazardNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED HazardNode NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!HazardNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-HazardNode NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=HazardNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT HazardNode NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","HazardNode"],CustomName:{text:"Marker | HazardNode",color:"red",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | HazardNode <1>",color:"red",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | HazardNode <2>",color:"red",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | HazardNode <3>",color:"red",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | HazardNode <4>",color:"red",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Hazard @s

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode