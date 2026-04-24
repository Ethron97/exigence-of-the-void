# Sets a berry node to active

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

# Return if not berry node
execute unless entity @s[tag=BerryNode] run return fail
#----------------------------------------------------------------------------------------------------

# Add active tag
tag @s add Active

# Set to berry-less bush
execute at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=0]

# Clear light
execute at @s run setblock ~ ~1 ~ light[level=3]

# Add active tag to interaction
#   DEPRECATED?>!@
#scoreboard players operation #compare node.id = @s node.id
#execute as @e[type=minecraft:interaction,tag=BerryInteract] if score @s node.id = #compare node.id run tag @s add Active
