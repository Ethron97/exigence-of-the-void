# Remove interaction entity for this bell

## CONSTRAINTS
#   AS BellNode

#====================================================================================================

scoreboard players operation #compare node.id = @s node.id
execute at @s as @e[type=minecraft:interaction,tag=BellInteract,distance=..5] if score @s node.id = #compare node.id run kill @s
