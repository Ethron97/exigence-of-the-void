# Remove interaction entity for this altar

## CONSTRAINTS
#   AS AltarNode

#====================================================================================================

scoreboard players operation #compare node.id = @s node.id
execute at @s as @e[type=minecraft:interaction,tag=AltarInteract,distance=..5] if score @s node.id = #compare node.id run kill @s
