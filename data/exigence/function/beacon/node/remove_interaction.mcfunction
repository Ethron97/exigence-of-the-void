# Remove interaction entity for this Beacon

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[type=minecraft:interaction,tag=BeaconInteract,distance=..5] if score @s NodeID = #compare NodeID run kill @s
