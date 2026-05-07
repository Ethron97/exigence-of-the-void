# Remove chests

## CONSTRAINTS
#   AT center of room

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Remove chests [locker room]

# Remove chests
setblock ^3 ^ ^ air
setblock ^3 ^ ^1 air

setblock ^2 ^ ^2 air
setblock ^1 ^ ^2 air

setblock ^-1 ^ ^2 air
setblock ^-2 ^ ^2 air

setblock ^-3 ^ ^1 air
setblock ^-3 ^ ^ air