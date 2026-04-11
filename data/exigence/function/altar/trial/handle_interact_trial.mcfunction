# Sub-function of altar/handle_interact. Called if altar is a trial/crucible altar
# Begins trial based on tag of parent VaultNode

## CONSTRAINTS
#   AS trial/crucible altar node
#   AT self

#====================================================================================================

# Copy vault code from altarnode to player
scoreboard players operation @p[tag=Lighting] game.player.vault_code = @s node.property.altar.vault_code

# Copy tag as well
execute if entity @s[tag=Trial] run tag @p[tag=Lighting] add Trial
execute if entity @s[tag=Crucible] run tag @p[tag=Lighting] add Crucible

# Get/tag parent vault node
scoreboard players operation #compare VaultID = @s VaultID
execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=VaultNode,distance=..16] if score @s NodeID = #compare VaultID run function exigence:altar/trial/begin_switch
