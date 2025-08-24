# Choose an echo node to activate for final tutorial section

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# Reset tag
tag @e[distance=..1000,type=minecraft:armor_stand,tag=ChosenEchoNode] remove ChosenEchoNode

# Choose node
execute as @e[distance=..1000,type=minecraft:armor_stand,scores={ObjectLevel=10},tag=EchoNode,sort=random,limit=1] run tag @s add ChosenEchoNode
execute as @n[distance=..1000,type=minecraft:armor_stand,tag=ChosenEchoNode] run function exigence:tutorial/setup/echo_node/activate

# Change name
data modify storage exigence:compass name set value [{text:"Echo Locator",color:"blue",italic:false}]
data modify storage exigence:compass lore set value []

# Give player compass
execute as @a[distance=..1000,tag=Tutorial] run function exigence:player/give/compass with storage exigence:compass

# Drop embers
execute as @n[distance=..1000,type=minecraft:armor_stand,tag=ChosenEchoNode] at @s run function exigence:ember/echo_embers/drop_embers
