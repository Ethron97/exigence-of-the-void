# Remove chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Remove chests

# Remove chests
setblock ~-4 ~ ~4 air
setblock ~-4 ~ ~3 air

setblock ~-5 ~ ~2 air
setblock ~-5 ~ ~1 air

setblock ~-5 ~ ~-1 air
setblock ~-5 ~ ~-2 air

setblock ~-4 ~ ~-3 air
setblock ~-4 ~ ~-4 air