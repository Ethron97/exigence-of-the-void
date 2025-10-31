# Place empty chests

## CONSTRAINTS
#   AT center of room

#=============================================================================================================

say Place chests

# Place blank chests
setblock ~-4 ~ ~4 chest[type=right,facing=east]
setblock ~-4 ~ ~3 chest[type=left,facing=east]

setblock ~-5 ~ ~2 chest[type=right,facing=east]
setblock ~-5 ~ ~1 chest[type=left,facing=east]

setblock ~-5 ~ ~-1 chest[type=right,facing=east]
setblock ~-5 ~ ~-2 chest[type=left,facing=east]

setblock ~-4 ~ ~-3 chest[type=right,facing=east]
setblock ~-4 ~ ~-4 chest[type=left,facing=east]