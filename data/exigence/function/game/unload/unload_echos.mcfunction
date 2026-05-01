# Cleanup echo nodes

#====================================================================================================

# Clear lights
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=EchoNode] \
at @s run function exigence:ember/node/unload
