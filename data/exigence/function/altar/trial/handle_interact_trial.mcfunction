# Sub-function of altar/handle_interact. Called if altar is a trial/crucible altar
# Begins trial based on tag of parent VaultNode

## CONSTRAINTS
#   AS/AT trial/crucible altar node

#====================================================================================================

# Not all vault altars are trial altars
execute if entity @s[tag=!Trial,tag=!Crucible] run return fail
#----------------------------------------------------------------------------------------------------

# Copy vault code from altarnode to player
scoreboard players operation @p[tag=Lighting] game.player.vault_code = @s node.property.altar.vault_code

# Copy tag as well
execute if entity @s[tag=Trial] run tag @p[tag=Lighting] add Trial
execute if entity @s[tag=Crucible] run tag @p[tag=Lighting] add Crucible

# Add tag to distinguish between hub/game trial
tag @p[tag=Lighting] add Game

# Get/tag parent vault node
execute as @n[type=minecraft:marker,tag=VaultNode,distance=..8] run function exigence:altar/trial/begin_switch
