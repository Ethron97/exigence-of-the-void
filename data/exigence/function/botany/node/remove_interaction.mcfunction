# Remove interaction entity for this berry bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

scoreboard players operation #compare node.id = @s node.id
execute at @s as @e[type=minecraft:interaction,tag=BerryInteract,distance=..3] if score @s node.id = #compare node.id run kill @s
