# Sub-function of altar/handle_interact. Called if altar is a trial/crucible altar
# Begins trial based on tag of parent VaultNode

## CONSTRAINTS
#   AS trial/crucible altar node
#   AT self

#=========================================================================================================


# Copy VaultCode from altarnode to player
scoreboard players operation @p[tag=Lighting] VaultCode = @s VaultCode

# Copy tag as well
execute if entity @s[tag=Trial] run tag @p[tag=Lighting] add Trial
execute if entity @s[tag=Crucible] run tag @p[tag=Lighting] add Crucible

# Get/tag parent vault node
scoreboard players operation #compare VaultID = @s VaultID
execute as @e[type=minecraft:armor_stand,tag=VaultNode,scores={ObjectLevel=3}] if score @s NodeID = #compare VaultID run function exigence:altar/trial/begin_switch
