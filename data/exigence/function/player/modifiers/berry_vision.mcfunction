# Glow grown bushes near active player

## CONSTRAINTS
#   AT player

#=============================================================================================================

# Idenfity BerryNodes to glow
execute as @e[distance=..16,type=minecraft:armor_stand,tag=BerryNode,tag=!BerryGlowing,tag=Grown] run function exigence:botany/node/glow

# Idenfity BerryNodes to unglow
#   Unglow if glowing and further than X blocks away or if it is not active
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=BerryGlowing] at @s unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.mod.berry_vision=1},distance=..16] run function exigence:botany/node/unglow
execute as @e[type=minecraft:armor_stand,tag=BerryNode,tag=BerryGlowing,tag=!Grown] run function exigence:botany/node/unglow
