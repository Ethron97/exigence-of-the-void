# Open square slot

## CONSTRAINTS
#   AS door slot fill (item display)

#====================================================================================================

#say Open slot

tag @s remove Closed
tag @s add Open
execute at @s at @n[distance=..0.5,type=marker,tag=DoorSlotMarker] run tp @s ~ ~ ~0.115

playsound block.grindstone.use ui @a ~ ~ ~ 0.5 1.5