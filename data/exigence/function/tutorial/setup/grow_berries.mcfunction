
## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=10},tag=BerryNode,tag=!NeverGrow,distance=..1000] run function exigence:botany/node/berry_bush_active
execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=10},tag=BerryNode,tag=Active,distance=..1000] run function exigence:botany/node/berry_bush_grow
