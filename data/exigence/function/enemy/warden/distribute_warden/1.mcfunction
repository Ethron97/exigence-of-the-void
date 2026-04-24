# Only designed to be called by distribute_wardened

## CONSTRAINTS
#   AS warden

#====================================================================================================

#say (D3) I am distributing on level 1

# Teleport to random MenaceNode that does not have tag "Wardened".
teleport @s @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,scores={node.property.object_level=1},tag=MenaceNode,tag=!Wardened,tag=!RavagerBlacklist,sort=random,limit=1]

# Give "NewWardened" tag to X nearest MenaceNode(s), level ignorant.
execute at @s run tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=!Wardened,tag=!NewWardened,distance=..64,sort=nearest,limit=10] add Wardened

# Give object level
scoreboard players set @s game.entity.object_level 1
