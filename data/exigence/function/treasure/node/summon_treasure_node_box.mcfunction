# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add TreasureNode
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add TreasureNodeBox
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"TreasureNode",color:"gold",italic:false}

# Copy position from POS1 and POS2 armorstands to variable scoreboards
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBX1 run data get storage exigence:treasure_drop POS1_x 1
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBY1 run data get storage exigence:treasure_drop POS1_y 1
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBZ1 run data get storage exigence:treasure_drop POS1_z 1
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBX2 run data get storage exigence:treasure_drop POS2_x 1
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBY2 run data get storage exigence:treasure_drop POS2_y 1
execute as @e[type=minecraft:armor_stand,tag=NewNode] store result score @s TreasureBBZ2 run data get storage exigence:treasure_drop POS2_z 1

# Validate BB
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBX1 > @s TreasureBBX2 run say ERROR X1 is greated than X2. Reposition pos1/pos2 and resummon node
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBX1 > @s TreasureBBX2 run kill @e[type=minecraft:armor_stand,tag=NewNode]
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBY1 > @s TreasureBBY2 run say ERROR Y1 is greated than Y2. Reposition pos1/pos2 and resummon node
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBY1 > @s TreasureBBY2 run kill @e[type=minecraft:armor_stand,tag=NewNode]
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBZ1 > @s TreasureBBZ2 run say ERROR Z1 is greated than Z2. Reposition pos1/pos2 and resummon node
execute as @e[type=minecraft:armor_stand,tag=NewNode] if score @s TreasureBBZ1 > @s TreasureBBZ2 run kill @e[type=minecraft:armor_stand,tag=NewNode]

# Add to Treasure team for color
team join Treasure @e[type=minecraft:armor_stand,tag=NewNode]

# If treasure debug is on, create bb and glow armorstand
execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:armor_stand,tag=NewNode] run function exigence:treasure/node/debug/create_bb
execute if data storage exigence:debug {treasure:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode