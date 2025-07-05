# Summon node base
execute at @s run function exigence:game/new_node

# Assign tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run function exigence:botany/node/new
