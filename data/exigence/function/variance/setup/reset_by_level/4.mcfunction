# Setup all variance nodes on level 4

#====================================================================================================

execute in minecraft:overworld as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=VarianceNode] at @s run function exigence:misc/node/pulse_state/0