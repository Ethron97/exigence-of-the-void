# Iterative function to raycast from marker a until it hits a wall, then teleports marker B there

## CONSTRAINTS
#   AT marker A (initially)

#=========================================================================================================

# DEBUG
#say Moving marker B

# Return and TP marker B if we hit a block
execute unless block ^ ^ ^ air run tp @e[type=minecraft:marker,tag=PizzaB] ^ ^ ^-1
execute unless block ^ ^ ^ air run return 1

# Iterate foward 0.2 blocks
execute positioned ^ ^ ^0.2 run function exigence:door/vault/bolt/trial/pizza/move_marker_b
