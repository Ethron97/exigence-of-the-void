# Remove tags etc from all of the hazard/variance nodes

#====================================================================================================

execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VarianceNode] run function exigence:variance/node/unload
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=HazardNode] run function exigence:hazard/node/unload