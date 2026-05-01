# Only designed to be called by distribute_wardened

## CONSTRAINTS
#   AS warden

#====================================================================================================

#say (D3) I am distributing on level 3

# Teleport to random menace node that does not have tag "Wardened".
teleport @s @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,tag=!Wardened,tag=!RavagerBlacklist,sort=random,limit=1]

# Give "NewWardened" tag to X nearest menace node(s), level ignorant.
execute at @s run tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=MenaceNode,tag=!Wardened,tag=!NewWardened,distance=..64,sort=nearest,limit=10] add Wardened

# Give object level
scoreboard players set @s game.entity.object_level 3
