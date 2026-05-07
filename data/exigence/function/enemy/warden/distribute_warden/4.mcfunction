# Only designed to be called by distribute_wardened

## CONSTRAINTS
#   AS warden

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) I am distributing on level 4

# Teleport to random menace node that does not have tag "Wardened".
teleport @s @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=MenaceNode,tag=!Wardened,tag=!RavagerBlacklist,sort=random,limit=1]

# Give "NewWardened" tag to X nearest menace node(s), level ignorant.
execute at @s run tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=MenaceNode,tag=!Wardened,tag=!NewWardened,distance=..64,sort=nearest,limit=10] add Wardened

# Give object level
scoreboard players set @s game.entity.object_level 4
