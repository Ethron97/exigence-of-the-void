say Recode this
return 0

# Summon with
# /function exigence:mirror/bookshelf/admin/summon_bookshelf_node {facing:"east"}

# Summon node base
execute at @s as @s run function exigence:game/admin/new_node

# Assign tag(s)
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add BookshelfNode
$execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add Facing$(facing)

# Give custom name
$execute as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"Bookshelf$(facing)",color:"yellow",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode] run team join Special @s

# Glow if debug
execute if data storage exigence:debug {bookshelf:1} as @e[type=minecraft:marker,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @e[type=minecraft:marker,tag=NewNode] remove NewNode