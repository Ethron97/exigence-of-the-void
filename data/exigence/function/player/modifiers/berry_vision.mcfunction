# Glow grown bushes near active player

## CONSTRAINTS
#   AT player

#====================================================================================================

# Idenfity BerryNodes to glow
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=!BerryGlowing,tag=Grown,distance=..16] run function exigence:botany/node/glow

# Idenfity BerryNodes to unglow
#   Unglow if glowing and further than X blocks away or if it is not active
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=BerryGlowing] at @s unless entity @a[scores={dead=0,game.player.mod.berry_vision=1},tag=ActivePlayer,distance=..16] run function exigence:botany/node/unglow
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=BerryGlowing,tag=!Grown] run function exigence:botany/node/unglow
