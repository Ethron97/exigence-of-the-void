# Remove chests

## CONSTRAINTS
#   AT center of ember shop ( 45.5 209.0 0.5 )

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Remove chests [ember shop]

# Remove chests
# Place blank chests
setblock ~-4 ~ ~-6 air
setblock ~-3 ~ ~-6 air

setblock ~-2 ~ ~-7 air
setblock ~-1 ~ ~-7 air

setblock ~1 ~ ~-7 air
setblock ~2 ~ ~-7 air

setblock ~3 ~ ~-6 air
setblock ~4 ~ ~-6 air
