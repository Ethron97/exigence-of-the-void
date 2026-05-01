# Copy bounding box data

## CONSTRAINTS
#   AS/AT old treasure node

#====================================================================================================

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Walk <1>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Walk <2>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Walk <3>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Walk <4>",color:"gold",italic:false}


scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.radius = @s TreasureRadius
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.radius int 1 run scoreboard players get @s node.property.treasure.radius

tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add TreasureNodeWalk