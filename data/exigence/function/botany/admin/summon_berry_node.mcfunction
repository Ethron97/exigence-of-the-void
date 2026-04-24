say recode this
return 0


# Summon node base
execute at @s run function exigence:game/admin/new_node

# Assign tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run function exigence:botany/node/new
