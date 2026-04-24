# Setup all variance nodes on level 1

#====================================================================================================

execute in minecraft:overworld as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=VarianceNode] at @s run function exigence:misc/node/pulse_state/0