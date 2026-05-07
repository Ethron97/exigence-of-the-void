say [Increase max Green by 1 if this is the first copy of this card, 2 if second, 3 if third]

# FUNCTIONALITY
# Add tag
tag @s add RootsOfVitality

# Increase score for each card with that tag
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=RootsOfVitality] run scoreboard players add green.max game.resources 1
