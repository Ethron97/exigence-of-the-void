# Remove interaction entity for this bell

## CONSTRAINTS
#   AS BellNode

#=================================================================================================================

scoreboard players operation #compare NodeID = @s NodeID
execute at @s as @e[distance=..5,type=minecraft:interaction,tag=BellInteract] if score @s NodeID = #compare NodeID run kill @s
