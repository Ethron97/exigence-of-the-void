# Saves "property" scores to the entity data

#=============================================================================================================

# Altar vault codes
execute as @e[tag=AltarNode] if data entity @s data.custom_data.vault_code store result score @s node.property.altar.vault_code run data get entity @s data.custom_data.vault_code
