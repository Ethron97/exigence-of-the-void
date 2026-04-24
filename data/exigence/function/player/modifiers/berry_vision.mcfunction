# Glow grown bushes near active player

## CONSTRAINTS
#   AT player

#====================================================================================================

# Idenfity BerryNodes to glow
execute as @e[type=minecraft:marker,tag=BerryNode,tag=!BerryGlowing,tag=Grown,distance=..16] run function exigence:botany/node/glow

# Idenfity BerryNodes to unglow
#execute as @e[type=minecraft:marker,tag=BerryNode,tag=BerryGlowing,tag=!Grown] run function exigence:botany/node/unglow
