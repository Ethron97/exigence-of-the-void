# Remove glowing block display on this bush

## CONSTRAINTS
#   AS BerryNode

#=============================================================================================================

# DEBUG
#say Unglow

# Remove tag
tag @s remove BerryGlowing

# Kill "BerryGlow" block display within 1 block
execute at @s run kill @e[distance=..1,type=minecraft:block_display,tag=BerryGlow]
