# Cleanup crystal/wards

#====================================================================================================

# Clear wards
execute in minecraft:overworld as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:interaction,tag=Crystal] \
at @s run function exigence:game/other/wards/crystal/remove
