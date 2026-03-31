# Remove interaction entity for this berry bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[type=minecraft:interaction,tag=BerryInteract,distance=..3] if score @s NodeID = #compare NodeID run kill @s
