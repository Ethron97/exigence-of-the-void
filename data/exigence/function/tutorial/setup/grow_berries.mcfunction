
## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.grow_berries without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Grow berries

execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=BerryNode,tag=!NeverGrow] run function exigence:botany/node/berry_bush_active
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,scores={node.property.object_level=10},tag=BerryNode,tag=Active] run function exigence:botany/node/berry_bush_grow
