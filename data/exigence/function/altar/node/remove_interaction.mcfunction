# Remove interaction entity for this altar

## CONSTRAINTS
#   AS AltarNode

#=================================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[distance=..5,type=minecraft:interaction,tag=AltarInteract] if score @s NodeID = #compare NodeID run kill @s
