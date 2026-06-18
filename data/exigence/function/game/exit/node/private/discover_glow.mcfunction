# Discovered portals only glow once all echos are found

## CONSTRAINTS
#   AS/AT ExitNode

#====================================================================================================

# Glow the display entities
execute as @e[type=minecraft:block_display,tag=ExitPortalDisplay,distance=..5] run data modify entity @s Glowing set value true