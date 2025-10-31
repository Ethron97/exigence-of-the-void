# Summon node base
execute at @s as @s run function exigence:game/new_node

# Assign tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add EmberNode

# Give custom name
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"EmberNode",color:"aqua",italic:false}

# Initialize node.ember.embers_to_drop scoreboard
execute as @e[type=armor_stand,tag=NewNode] run scoreboard players set @s node.ember.embers_to_drop 0

# Assign team
execute as @e[type=armor_stand,tag=NewNode] run team join Ember @s

# If debug, glow
execute if data storage exigence:debug {ember:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode
