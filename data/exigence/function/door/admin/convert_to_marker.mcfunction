# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT door node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=DoorNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED DoorNode NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!DoorNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-DoorNode NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=DoorNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT DoorNode NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","DoorNode"],CustomName:{text:"Marker | DoorNode",color:"yellow",italic:false}}

# Copy rotation
data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] Rotation set from entity @s Rotation

# Put door name into name
execute if entity @s[tag=Door1] run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | DoorNode | MirrorMines",color:"yellow",italic:false}
execute if entity @s[tag=Door2] run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | DoorNode | TempleOfFervor",color:"yellow",italic:false}
execute if entity @s[tag=Door3] run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | DoorNode | Ardors Bane",color:"yellow",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Special @s

# Copy node id
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.id = @s node.id
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.node_id int 1 run scoreboard players get @s node.id

# Copy tags
execute if entity @s[tag=Door1] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Door1
execute if entity @s[tag=Door2] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Door2
execute if entity @s[tag=Door3] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add Door3
execute if entity @s[tag=MirrorMines] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add MirrorMines
execute if entity @s[tag=TempleOfFervor] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add TempleOfFervor
execute if entity @s[tag=ArdorsBane] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add ArdorsBane

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode
