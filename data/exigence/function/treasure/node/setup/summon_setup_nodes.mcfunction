# Summon two positional nodes used to define the bounding box of a treasure node's drop area

# POS1
# Create a new node with tag "NewNode"
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["NewNode","Debug"],NoBasePlate:1b,NoGravity:1b}

# If debug is on, give glow and name visible
execute if data storage exigence:dungeon {debug:1} as @e[type=minecraft:armor_stand,tag=Debug,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b}
# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"POS1",color:"white",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add POS1

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode



# POS2
# Create a new node with tag "NewNode"
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["NewNode","Debug"],NoBasePlate:1b,NoGravity:1b}

# If debug is on, give glow and name visible
execute if data storage exigence:dungeon {debug:1} as @e[type=minecraft:armor_stand,tag=Debug,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b}
# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"POS2",color:"white",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add POS2

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode