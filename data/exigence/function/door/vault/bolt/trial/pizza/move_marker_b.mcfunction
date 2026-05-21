# Iterative function to raycast from marker a until it hits a wall, then teleports marker B there

## CONSTRAINTS
#   AT marker A (initially)

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4) Moving marker B

# Return and TP marker B if we hit a block
execute unless block ^ ^ ^ air run tp @e[type=minecraft:marker,tag=PizzaB] ^ ^ ^-1
execute unless block ^ ^ ^ air run return 1
#----------------------------------------------------------------------------------------------------

# Iterate foward 0.2 blocks
execute positioned ^ ^ ^0.2 run function exigence:door/vault/bolt/trial/pizza/move_marker_b
