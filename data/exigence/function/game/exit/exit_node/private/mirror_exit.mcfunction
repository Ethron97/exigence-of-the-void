# Find a suitable EchoNode to place the exit portal, in the Mirror Mines

## CONSTRAINTS
#   AS exit armorstand

#====================================================================================================

# Find armorstand to use as portal
#   1 random non-active echo node on level 2 that isn't already a portal
tag @e[type=armor_stand,scores={ObjectLevel=2},tag=EchoNode,tag=!ChosenEchoNode,tag=!HasPortal,sort=random,limit=1] add NewHasPortal

# Teleport exit to selected node
execute at @e[type=armor_stand,tag=NewHasPortal] run tp @s ~ ~ ~

# Add tracking tag
tag @e[type=armor_stand,tag=NewHasPortal] add HasPortal

# Remove local tag
tag @e[type=armor_stand,tag=NewHasPortal] remove NewHasPortal
