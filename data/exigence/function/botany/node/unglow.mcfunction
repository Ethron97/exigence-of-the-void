# Remove glowing block display on this bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

# DEBUG
#say Unglow

# Remove tag
tag @s remove BerryGlowing

# Kill "BerryGlow" block display within 1 block
execute at @s run kill @n[type=minecraft:block_display,tag=BerryGlow,distance=..1]
