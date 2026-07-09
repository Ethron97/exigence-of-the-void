# Place empty chests

## CONSTRAINTS
#   AT center of ember shop ( 45.5 209.0 0.5 )

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Place chests [ember shop]

# Place blank chests
setblock ~-4 ~ ~-6 minecraft:chest[type=right,facing=south]
setblock ~-3 ~ ~-6 minecraft:chest[type=left,facing=south]

setblock ~-2 ~ ~-7 minecraft:chest[type=right,facing=south]
setblock ~-1 ~ ~-7 minecraft:chest[type=left,facing=south]

setblock ~1 ~ ~-7 minecraft:copper_chest[type=right,facing=south]
setblock ~2 ~ ~-7 minecraft:copper_chest[type=left,facing=south]

setblock ~3 ~ ~-6 minecraft:chest[type=right,facing=south]
setblock ~4 ~ ~-6 minecraft:chest[type=left,facing=south]