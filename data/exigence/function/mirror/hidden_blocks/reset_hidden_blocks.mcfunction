# Reset mirror/hidden blocks

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Kill hidden block displays
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=HiddenBlock]
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:block_display,tag=HiddenBlockDebug]
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:block_display,tag=RevealedBlock]