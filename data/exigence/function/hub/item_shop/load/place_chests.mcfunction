# Place empty chests

## CONSTRAINTS
#   AT center of hallway ( -27.5 200.0 0.5 )

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Place chests [item shop]

# Place blank chests
setblock ~2 ~ ~3 minecraft:chest[type=right,facing=north]
setblock ~1 ~ ~3 minecraft:chest[type=left,facing=north]

setblock ~-1 ~ ~3 minecraft:chest[type=right,facing=north]
setblock ~-2 ~ ~3 minecraft:chest[type=left,facing=north]

setblock ~-2 ~ ~-3 minecraft:chest[type=right,facing=south]
setblock ~-1 ~ ~-3 minecraft:chest[type=left,facing=south]

setblock ~1 ~ ~-3 minecraft:copper_chest[type=right,facing=south]
setblock ~2 ~ ~-3 minecraft:copper_chest[type=left,facing=south]