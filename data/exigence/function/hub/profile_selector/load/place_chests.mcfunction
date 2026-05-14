# Place empty chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Place chests

# Place blank chests
setblock ~-4 ~ ~4 minecraft:chest[type=right,facing=east]
setblock ~-4 ~ ~3 minecraft:chest[type=left,facing=east]

setblock ~-5 ~ ~2 minecraft:chest[type=right,facing=east]
setblock ~-5 ~ ~1 minecraft:chest[type=left,facing=east]

setblock ~-5 ~ ~-1 minecraft:copper_chest[type=right,facing=east]
setblock ~-5 ~ ~-2 minecraft:copper_chest[type=left,facing=east]

setblock ~-4 ~ ~-3 minecraft:chest[type=right,facing=east]
setblock ~-4 ~ ~-4 minecraft:chest[type=left,facing=east]