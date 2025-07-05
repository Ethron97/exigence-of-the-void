# Reset berry nodes
execute as @e[type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10}] at @s run function exigence:botany/node/berry_bush_inactive

# Place mud beneath because they are always on mud?
execute as @e[type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10}] at @s run setblock ~ ~-1 ~ minecraft:mud

# Set 3/4 active
execute as @e[type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10},tag=!NeverGrow] run function exigence:botany/node/berry_bush_active
