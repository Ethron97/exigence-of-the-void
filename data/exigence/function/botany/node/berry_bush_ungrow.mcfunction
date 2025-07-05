# Grows berries on an active berry node. Determines how growth stage.

## CONSTRAINTS
#   AS BerryNode armorstand

#======================================================================================================

# Return if not berry node
execute unless entity @s[tag=BerryNode] run return fail

# Remove tags
tag @s remove Grown
tag @s remove Overgrown
tag @s remove FromSetup

# Clear light
execute at @s[tag=BerryNode] run setblock ~ ~1 ~ light[level=3]

# Set to berryless bush
execute at @s[tag=BerryNode] run setblock ~ ~ ~ sweet_berry_bush[age=1]

# Unglow
execute at @s run function exigence:botany/node/unglow

# Kill interaction
function exigence:botany/node/remove_interaction
