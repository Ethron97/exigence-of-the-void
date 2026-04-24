# Setup all variance nodes on level 2

#====================================================================================================

execute in minecraft:overworld as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=VarianceNode] at @s run function exigence:variance/node/setup