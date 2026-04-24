# Cleanup exits

#====================================================================================================

# Clear from level 1
execute in minecraft:overworld as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,tag=ExitNode] \
at @s run function exigence:game/exit/remove_exit

# Clear from level 2
execute in minecraft:overworld as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=ExitNode] \
at @s run function exigence:game/exit/remove_exit