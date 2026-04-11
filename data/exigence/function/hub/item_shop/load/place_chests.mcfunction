# Place empty chests

## CONSTRAINTS
#   AT center of hallway ( -27.5 200.0 0.5 )

#====================================================================================================

#say (D3) Place chests [item shop]

# Place blank chests
setblock ~2 ~ ~3 chest[type=right,facing=north]
setblock ~1 ~ ~3 chest[type=left,facing=north]

setblock ~-1 ~ ~3 chest[type=right,facing=north]
setblock ~-2 ~ ~3 chest[type=left,facing=north]

setblock ~-2 ~ ~-3 chest[type=right,facing=south]
setblock ~-1 ~ ~-3 chest[type=left,facing=south]

setblock ~1 ~ ~-3 chest[type=right,facing=south]
setblock ~2 ~ ~-3 chest[type=left,facing=south]