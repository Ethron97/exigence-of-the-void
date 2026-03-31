# Remove interaction entity for this altar

## CONSTRAINTS
#   AS AltarNode

#====================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[type=minecraft:interaction,tag=AltarInteract,distance=..5] if score @s NodeID = #compare NodeID run kill @s
