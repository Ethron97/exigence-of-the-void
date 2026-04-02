# Summon a new player node

## CONSTRAINTS
#   AT location

#====================================================================================================

setblock ~ ~ ~ diamond_block

summon minecraft:armor_stand ~ ~ ~ {Tags:["NewPlayerNode","PlayerNode"],Rotation:[90,0],ShowArms:true,data:{custom_data:{mail:[]}}}

execute as @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,type=minecraft:armor_stand,tag=NewPlayerNode] run function exigence:profile/player_node/new/private/player_node_data
