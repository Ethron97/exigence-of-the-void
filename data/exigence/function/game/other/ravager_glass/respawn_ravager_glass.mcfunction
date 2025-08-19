# Executed as a Ravager Glass marker once their cooldown reaches 0

## CONSTRAINTS
#   AS Marker (RavagerGlass)

#=======================================================================================================

# 1. Replace the Ravager Glass
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:gray_stained_glass_pane replace air

# 2. Remove the marker
kill @s
