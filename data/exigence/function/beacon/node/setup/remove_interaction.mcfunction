# Remove interaction entity for this Beacon

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

scoreboard players operation #compare node.id = @s node.id
execute at @s as @e[type=minecraft:interaction,tag=BeaconInteract,distance=..5] if score @s node.id = #compare node.id run kill @s
