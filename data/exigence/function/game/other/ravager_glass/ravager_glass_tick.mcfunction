# Called by tick unless both game and tutorial are off

# GAME USE DEPRECATED; ONLY USED IN TUTORIAL NOW

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# 1. Detect if there is Ravager Glass TM beneath, inside, or above the active player. If there is, run
execute as @p[tag=Tutorial,gamemode=adventure] at @s run function exigence:player/ravager_glass/check

execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/update
