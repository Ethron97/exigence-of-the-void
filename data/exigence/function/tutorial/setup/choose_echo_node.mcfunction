# Choose an echo node to activate for final tutorial section

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# Reset tag
tag @e[type=minecraft:armor_stand,tag=ChosenEchoNode,distance=..1000] remove ChosenEchoNode

# Choose node
execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=10},tag=EchoNode,distance=..1000,sort=random,limit=1] run tag @s add ChosenEchoNode
execute as @n[distance=..1000,type=minecraft:armor_stand,tag=ChosenEchoNode] run function exigence:tutorial/setup/echo_node/activate

# Change name
data modify storage exigence:compass name set value [{text:"Echo Locator",color:"blue",italic:false}]
data modify storage exigence:compass lore set value []

# Give player compass
execute as @a[tag=Tutorial,distance=..1000] run function exigence:player/give/compass with storage exigence:compass

# Drop embers
execute as @n[distance=..1000,type=minecraft:armor_stand,tag=ChosenEchoNode] at @s run function exigence:ember/echo_embers/drop_embers
