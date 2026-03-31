# Remove interaction entity for this bell

## CONSTRAINTS
#   AS BellNode

#====================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[type=minecraft:interaction,tag=BellInteract,distance=..5] if score @s NodeID = #compare NodeID run kill @s
