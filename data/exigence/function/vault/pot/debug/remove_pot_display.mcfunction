# Remove debug pot

## INPUT
#   INT pot_x
#   INT pot_y
#   INT pot_z

#====================================================================================================

$kill @e[x=$(pot_x),y=$(pot_y),z=$(pot_z),dx=0,dy=0,dz=0,type=minecraft:block_display,tag=PotDebugDisplay]