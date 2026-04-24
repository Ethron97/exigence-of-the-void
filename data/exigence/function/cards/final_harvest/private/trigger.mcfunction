# called if successful consume from play function

# Overgrow all grown berry nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode,tag=Grown] run function exigence:botany/node/berry_bush_overgrow {min:2,max:3}

# Set score to track (prevents future berry nodes from growing)
scoreboard players set mod.final_harvest game.modifiers 1
