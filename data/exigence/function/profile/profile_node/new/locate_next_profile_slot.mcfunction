# Iterative function that moves marker to the final location

## CONSTRAINTS
#   AT starting/current position

#=============================================================================================================

# If space is empty, place and return
execute unless entity @e[distance=..0.5,tag=ProfileNode] run return 1

# If there is a player node in the current space, move one over
tp @s ~ ~ ~2

# If we are above air, move back to start of next row
execute at @s if block ~ 0 ~ minecraft:air run tp @s ~ ~4 0.5

# Iterate
execute at @s run function exigence:profile/profile_node/new/locate_next_profile_slot
