# Open square slot

## CONSTRAINTS
#   AS door slot fill (item display)

#====================================================================================================

#say (D3) Open slot

tag @s remove Closed
tag @s add Open
execute at @s at @n[type=minecraft:marker,tag=DoorSlotMarker,distance=..0.5] run tp @s ~ ~ ~0.115

playsound block.grindstone.use ui @a ~ ~ ~ 0.5 1.5