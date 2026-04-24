# Called from pulse_state_switch

## CONSTRAINTS
#   AT positioned

#====================================================================================================

# Pulse a redstone block based on a nodes current game.node.node_state
setblock ~6 ~ ~ minecraft:redstone_block
setblock ~6 ~ ~ minecraft:air
