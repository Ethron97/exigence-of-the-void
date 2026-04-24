# Called by botany/resolve_berry to grow a single active berry bush

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Tag potential growths
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=BerryNode,tag=Active,tag=!Grown] run tag @s add PotentialGrowth

# If bush to grow, grow it
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth,sort=random,limit=1] run function exigence:botany/private/grow_bush_yes

# Otherwise, no bush
execute unless entity @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth] run function exigence:botany/private/grow_bush_no

# Reset tag
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth] remove PotentialGrowth