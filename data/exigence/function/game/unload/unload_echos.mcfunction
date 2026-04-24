# Cleanup echo nodes

#====================================================================================================

# Clear lights
execute in minecraft:overworld as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,tag=EchoNode] \
at @s run function exigence:ember/node/unload
