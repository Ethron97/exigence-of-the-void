# Create interaction entity for this Altar

## CONSTRAINTS
#   AS AltarNode

#=================================================================================================================

# Store this Altar's id for lookup
scoreboard players operation #compare NodeID = @s NodeID

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
execute as @e[type=minecraft:interaction,tag=AltarInteract] if score @s NodeID = #compare NodeID run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {width:2.8,height:1.5,Tags:["NewAltarInteract","AltarInteract"],response:1b}

# Assign id
scoreboard players operation @e[type=minecraft:interaction,tag=NewAltarInteract] NodeID = #compare NodeID

# Assign vault code (for level 3 vaults)
execute if score @s node.property.altar.vault_code matches 1.. run scoreboard players operation @e[type=minecraft:interaction,tag=NewAltarInteract] game.entity.vault_code = @s node.property.altar.vault_code

# Remove local tag
tag @e[type=minecraft:interaction,tag=NewAltarInteract] remove NewAltarInteract
