# Move nearest node

## CONSTRAINTS
#   AS player

#====================================================================================================

execute at @s unless entity @n[type=minecraft:marker,tag=EchoNode,distance=..25] run return run say No EchoNode not found within 25 blocks
#----------------------------------------------------------------------------------------------------

# Move nearest node of the given type to the player's location, aligned and oriented
execute at @s as @n[type=minecraft:marker,tag=EchoNode,distance=..25] run function exigence:misc/node/move/private/echo_node