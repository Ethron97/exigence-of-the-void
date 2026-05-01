# To be called from game load sequence

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

#say (D3) Activate menace nodes

# Deactivate all menace nodes
#   Resets Random score
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode] run function exigence:menace/node/reset

# Each individual menace node, regardless of level, has a 1/3 chance. Roll into Random scoreboard.
#   All are active for the tutorial level for consistency.
execute if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=MenaceNode] store result score @s Random run random value 1..6
execute if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=MenaceNode] store result score @s Random run random value 1..5
execute if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode] store result score @s Random run random value 1..4
execute if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=MenaceNode] store result score @s Random run random value 1..3

# For all menance nodes that rolled a 1, set active
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={Random=1},tag=MenaceNode] run tag @s add Active

# Also adding a buffer/min.
execute if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=MenaceNode,sort=random,limit=3] run tag @s add Active
execute if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=MenaceNode,sort=random,limit=3] run tag @s add Active
execute if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,sort=random,limit=3] run tag @s add Active
execute if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=MenaceNode,sort=random,limit=3] run tag @s add Active

# Add Phantom tag to all active nodes
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode,tag=Active] add PhantomNode
#execute as @e[type=minecraft:marker,tag=MenaceNode,tag=Active] run say I'm active!
