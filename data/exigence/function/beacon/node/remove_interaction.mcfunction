# Remove interaction entity for this Beacon

## CONSTRAINTS
#   AS BeaconNode

#=================================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[distance=..5,type=minecraft:interaction,tag=BeaconInteract] if score @s NodeID = #compare NodeID run kill @s
