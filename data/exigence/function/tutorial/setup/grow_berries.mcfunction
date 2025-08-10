
## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

execute as @e[distance=..1000,type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10},tag=!NeverGrow] run function exigence:botany/node/berry_bush_active
execute as @e[distance=..1000,type=minecraft:armor_stand,tag=BerryNode,scores={ObjectLevel=10},tag=Active] run function exigence:botany/node/berry_bush_grow
