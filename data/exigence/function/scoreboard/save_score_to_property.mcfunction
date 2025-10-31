# Saves "property" scores to the entity data

#=============================================================================================================

# Altar vault codes
execute as @e[tag=AltarNode,scores={node.property.altar.vault_code=1..}] store result entity @s data.custom_data.vault_code int 1 run scoreboard players get @s node.property.altar.vault_code
