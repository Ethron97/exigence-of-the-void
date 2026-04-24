# Called from pulse_state_switch

## CONSTRAINTS
#   AT positioned

#====================================================================================================

# Pulse a redstone block based on a nodes current game.node.node_state
setblock ~11 ~ ~ minecraft:redstone_block
setblock ~11 ~ ~ minecraft:air
