# Copy bounding box data

## CONSTRAINTS
#   AS/AT old treasure node

#====================================================================================================

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Box <1>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Box <2>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Box <3>",color:"gold",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | TreasureNode-Box <4>",color:"gold",italic:false}


scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBX1 = @s TreasureBBX1
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBX1 int 1 run scoreboard players get @s node.property.treasure.BBX1

scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBX2 = @s TreasureBBX2
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBX2 int 1 run scoreboard players get @s node.property.treasure.BBX2

scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBY1 = @s TreasureBBY1
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBY1 int 1 run scoreboard players get @s node.property.treasure.BBY1

scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBY2 = @s TreasureBBY2
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBY2 int 1 run scoreboard players get @s node.property.treasure.BBY2

scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBZ1 = @s TreasureBBZ1
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBZ1 int 1 run scoreboard players get @s node.property.treasure.BBZ1

scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.treasure.BBZ2 = @s TreasureBBZ2
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.BBZ2 int 1 run scoreboard players get @s node.property.treasure.BBZ2

tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add TreasureNodeBox