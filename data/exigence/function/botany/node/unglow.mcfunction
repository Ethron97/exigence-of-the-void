# Remove glowing block display on this bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

# DEBUG
execute if score toggle.berry debug matches 1 if score debug.level debug matches 3.. run say (D3 Berry) Unglow

# Remove tag
tag @s remove BerryGlowing

# Kill "BerryGlow" block display within 1 block
execute at @s run kill @e[type=minecraft:block_display,tag=BerryGlow,distance=..1]
