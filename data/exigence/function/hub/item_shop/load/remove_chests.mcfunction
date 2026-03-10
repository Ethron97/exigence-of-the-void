# Remove chests

## CONSTRAINTS
#   AT center of hallway ( -27.5 200.0 0.5 )

#====================================================================================================

say Remove chests

# Remove chests
setblock ~2 ~ ~3 air
setblock ~1 ~ ~3 air

setblock ~-1 ~ ~3 air
setblock ~-2 ~ ~3 air

setblock ~-2 ~ ~-3 air
setblock ~-1 ~ ~-3 air

setblock ~1 ~ ~-3 air
setblock ~2 ~ ~-3 air