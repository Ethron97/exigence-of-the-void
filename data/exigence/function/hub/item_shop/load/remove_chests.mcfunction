# Remove chests

## CONSTRAINTS
#   AT center of hallway ( -27.5 200.0 0.5 )

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Remove chests [item shop]

# Remove chests
setblock ~2 ~ ~3 air
setblock ~1 ~ ~3 air

setblock ~-1 ~ ~3 air
setblock ~-2 ~ ~3 air

setblock ~-2 ~ ~-3 air
setblock ~-1 ~ ~-3 air

setblock ~1 ~ ~-3 air
setblock ~2 ~ ~-3 air