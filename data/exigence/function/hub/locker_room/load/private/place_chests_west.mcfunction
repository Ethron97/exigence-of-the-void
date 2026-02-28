# Place empty chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

say Place chests (West)

# Place blank chests
setblock ^3 ^ ^ chest[type=right,facing=north]
setblock ^3 ^ ^1 chest[type=left,facing=north]

setblock ^2 ^ ^2 chest[type=right,facing=east]
setblock ^1 ^ ^2 chest[type=left,facing=east]

setblock ^-1 ^ ^2 chest[type=right,facing=east]
setblock ^-2 ^ ^2 chest[type=left,facing=east]

setblock ^-3 ^ ^1 chest[type=right,facing=south]
setblock ^-3 ^ ^ chest[type=left,facing=south]