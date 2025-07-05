# Summon node base
execute at @s as @s run function exigence:game/new_node

# Assign tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add AltarNode

# Give custom name
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"AltarNode",color:"yellow",italic:false}

# Assign team
execute as @e[type=minecraft:armor_stand,tag=NewNode] run team join Special @s

# If debug, glow
execute if data storage exigence:debug {altar:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode