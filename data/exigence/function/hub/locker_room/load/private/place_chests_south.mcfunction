# Place empty chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Place chests (South) [locker room]

# Place blank chests
setblock ^3 ^ ^ minecraft:chest[type=right,facing=west]
setblock ^3 ^ ^1 minecraft:chest[type=left,facing=west]

setblock ^2 ^ ^2 minecraft:chest[type=right,facing=north]
setblock ^1 ^ ^2 minecraft:chest[type=left,facing=north]

setblock ^-1 ^ ^2 minecraft:copper_chest[type=right,facing=north]
setblock ^-2 ^ ^2 minecraft:copper_chest[type=left,facing=north]

setblock ^-3 ^ ^1 minecraft:chest[type=right,facing=east]
setblock ^-3 ^ ^ minecraft:chest[type=left,facing=east]