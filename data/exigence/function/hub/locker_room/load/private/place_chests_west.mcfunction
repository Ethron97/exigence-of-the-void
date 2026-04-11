# Place empty chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

#say (D3) Place chests (West) [locker room]

# Place blank chests
setblock ^3 ^ ^ chest[type=right,facing=north]
setblock ^3 ^ ^1 chest[type=left,facing=north]

setblock ^2 ^ ^2 chest[type=right,facing=east]
setblock ^1 ^ ^2 chest[type=left,facing=east]

setblock ^-1 ^ ^2 chest[type=right,facing=east]
setblock ^-2 ^ ^2 chest[type=left,facing=east]

setblock ^-3 ^ ^1 chest[type=right,facing=south]
setblock ^-3 ^ ^ chest[type=left,facing=south]