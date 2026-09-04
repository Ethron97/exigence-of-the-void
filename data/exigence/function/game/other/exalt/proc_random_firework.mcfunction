# Randomly spawn some fireworks throughout level 4 at random nodes

# Called hub tick if exalting=true

#====================================================================================================

execute in minecraft:overworld at @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=Node,tag=!BellNode,tag=!AltarNode,tag=!HazardNode,tag=!VarianceNode,sort=random,limit=1] run function exigence:game/other/exalt/random_fireworks
