# Place empty chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

say Place chests (South)

# Place blank chests
setblock ^3 ^ ^ chest[type=right,facing=west]
setblock ^3 ^ ^1 chest[type=left,facing=west]

setblock ^2 ^ ^2 chest[type=right,facing=north]
setblock ^1 ^ ^2 chest[type=left,facing=north]

setblock ^-1 ^ ^2 chest[type=right,facing=north]
setblock ^-2 ^ ^2 chest[type=left,facing=north]

setblock ^-3 ^ ^1 chest[type=right,facing=east]
setblock ^-3 ^ ^ chest[type=left,facing=east]