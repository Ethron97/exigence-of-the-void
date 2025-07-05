# Remove interaction entity for this berry bush

## CONSTRAINTS
#   AS BerryNode

#=================================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[distance=..3,type=minecraft:interaction,tag=BerryInteract] if score @s NodeID = #compare NodeID run kill @s
