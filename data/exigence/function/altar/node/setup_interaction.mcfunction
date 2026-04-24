# Create interaction entity for this Altar

## CONSTRAINTS
#   AS AltarNode

#====================================================================================================

# Store this Altar's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
#   TODO just move a single command to game_reset to kill all atlar interacts
execute as @e[type=minecraft:interaction,tag=AltarInteract,distance=..1000] if score @s node.id = #compare node.id run kill @s

# Summon new interaction
execute at @s run execute summon minecraft:interaction run function exigence:altar/node/private/new_interaction
