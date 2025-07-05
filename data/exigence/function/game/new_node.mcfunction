# Summon a new armorstand
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["NewNode"],NoBasePlate:1b,NoGravity:1b,Marker:1b}

# If debug is on, give glow and name visible
#execute if data storage exigence:dungeon {debug:1} as @e[type=minecraft:armor_stand,tag=Debug,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b}

# Assign id
execute as @e[type=minecraft:armor_stand,tag=NewNode] run function exigence:misc/node/assign_node_id

# Copy object level
scoreboard players operation @e[type=minecraft:armor_stand,tag=NewNode] ObjectLevel = @s ObjectLevel
tellraw @s [{text:"Active Level ",italic: false,bold: false,color: "white"},{"score":{"name":"@s","objective":"ObjectLevel"}}]

execute at @s align x align y align z run tp @e[type=minecraft:armor_stand,tag=NewNode] ~.5 ~ ~.5