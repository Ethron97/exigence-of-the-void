# Close square slot

## CONSTRAINTS
#   AS door slot fill (item display)

#====================================================================================================

tag @s add Closed
tag @s remove Open
execute at @s at @n[type=marker,tag=DoorSlotMarker,distance=..0.5] run tp @s ~ ~ ~

playsound block.grindstone.use ui @a ~ ~ ~ 0.5 1.3