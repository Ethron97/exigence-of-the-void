# Iterative function that moves marker to the final location

## CONSTRAINTS
#   AT starting/current position

#====================================================================================================

# If we are above red glazed terracotta, just return and we stack them, whatever.
execute at @s if block ~ ~-1 ~ minecraft:red_glazed_terracotta run return 1

# If space is empty, place and return
execute align xyz unless entity @n[dx=0,dy=0,dz=0,tag=PlayerNode] if block ~ ~ ~ air run return 1
#----------------------------------------------------------------------------------------------------

# If there is a player node in the current space, move one over
tp @s ~ ~ ~1

# If we are above diamond block, move back to start of next row
execute at @s if block ~ 0 ~ minecraft:diamond_block run tp @s ~1 ~ 33.5

# Iterate
execute at @s run function exigence:profile/player_node/new/locate_next_player_slot
