# Setup all variance nodes on level 3

#====================================================================================================

execute in minecraft:overworld as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=VarianceNode] at @s run function exigence:variance/node/setup