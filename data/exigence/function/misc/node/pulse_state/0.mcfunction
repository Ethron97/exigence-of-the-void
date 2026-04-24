# Called from pulse_state_switch

## CONSTRAINTS
#   AT positioned

#====================================================================================================

# Pulse a redstone block based on a nodes current game.node.node_state
setblock ~ ~ ~ minecraft:redstone_block
setblock ~ ~ ~ minecraft:air
