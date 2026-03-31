# Called by exit_node.tick when a player gets within 8 blocks of it

## CONSTRAINTS
#   AS ExitNode

#====================================================================================================

# Add tag
tag @s add PortalDiscovered

# Glow the display entities
execute at @s as @e[type=block_display,tag=ExitPortalDisplay,distance=..5] run data modify entity @s Glowing set value true
