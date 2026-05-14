# Choose an echo node to activate for final tutorial section

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.choose_echo_node without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Choose echo node

# Reset tag
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=ChosenEchoNode] remove ChosenEchoNode

# Choose node
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=EchoNode,sort=random,limit=1] run tag @s add ChosenEchoNode
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=ChosenEchoNode] run function exigence:tutorial/setup/echo_node/activate

# Change name
data modify storage exigence:compass name set value [{text:"Echo Locator",color:"blue",italic:false}]
data modify storage exigence:compass lore set value []

# Give player compass
execute as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] run function exigence:player/give/compass with storage exigence:compass

# Drop embers
execute as @n[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=ChosenEchoNode] at @s run function exigence:ember/echo_embers/drop_embers
