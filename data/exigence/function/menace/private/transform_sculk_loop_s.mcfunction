# Schedule this from the iteration loop so we can call as redifier

#====================================================================================================

execute in minecraft:overworld as @e[x=-380,y=-63,z=-124,dx=7,dy=380,dz=7,type=minecraft:marker,tag=Redifier] at @s run function exigence:menace/private/transform_sculk_loop