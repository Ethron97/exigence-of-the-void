# Apply void keep

## INPUT
#   INT i

#====================================================================================================

$execute in minecraft:overworld run tag @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10\
,type=minecraft:armor_stand,tag=Card,tag=Played,tag=IsVoid,tag=!ReturnCard,sort=random,limit=$(i)] add ReturnCard