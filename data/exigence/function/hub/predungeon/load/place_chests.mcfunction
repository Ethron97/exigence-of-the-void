# Place empty chests

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )

#====================================================================================================

#say (D3) Place chests [predungeon]

# Place blank chests
setblock ~-4 ~ ~3 chest[type=right,facing=north]
setblock ~-5 ~ ~3 chest[type=left,facing=north]

setblock ~-6 ~ ~2 chest[type=right,facing=east]
setblock ~-6 ~ ~1 chest[type=left,facing=east]

setblock ~-6 ~ ~-1 chest[type=right,facing=east]
setblock ~-6 ~ ~-2 chest[type=left,facing=east]

setblock ~-5 ~ ~-3 chest[type=right,facing=south]
setblock ~-4 ~ ~-3 chest[type=left,facing=south]