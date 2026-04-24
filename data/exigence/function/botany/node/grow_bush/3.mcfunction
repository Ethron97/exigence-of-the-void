# Called by botany/resolve_berry to grow a single active berry bush

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Tag potential growths
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=BerryNode,tag=Active,tag=!Grown] run tag @s add PotentialGrowth

# If bush to grow, grow it
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth,sort=random,limit=1] run function exigence:botany/private/grow_bush_yes

# Otherwise, no bush
execute unless entity @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth] run function exigence:botany/private/grow_bush_no

# Reset tag
tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=BerryNode,tag=PotentialGrowth] remove PotentialGrowth