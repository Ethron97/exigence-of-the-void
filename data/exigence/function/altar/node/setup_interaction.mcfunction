# Create interaction entity for this Altar

## CONSTRAINTS
#   AS AltarNode

#====================================================================================================

# Store this Altar's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
#   TODO just move a single command to game_reset to kill all atlar interacts
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=AltarInteract] if score @s game.interaction.node.id = #compare node.id run kill @s

# Summon new interaction
execute at @s run execute summon minecraft:interaction run function exigence:altar/node/private/new_interaction
