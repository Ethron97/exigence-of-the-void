# Find a suitable EchoNode to place the exit portal, in the Mirror Mines

## CONSTRAINTS
#   AS ExitNode

#====================================================================================================

# Find armorstand to use as portal
#   1 random non-active echo node on level 2 that isn't already a portal
tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=EchoNode,tag=!ChosenEchoNode,tag=!HasPortal,sort=random,limit=1] add NewHasPortal

# Teleport exit to selected node
execute at @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=NewHasPortal,limit=1] run tp @s ~ ~ ~

# Add tracking tag
tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=NewHasPortal,limit=1] add HasPortal

# Remove local tag
tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=NewHasPortal,limit=1] remove NewHasPortal
