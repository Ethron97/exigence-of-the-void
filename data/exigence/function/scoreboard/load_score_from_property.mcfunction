# Saves "property" scores to the entity data

#====================================================================================================

# Node id
execute as @e if data entity @s data.custom_data.node_id store result score @s node.id run data get entity @s data.custom_data.node_id
# Object level
execute as @e if data entity @s data.custom_data.object_level store result score @s node.property.object_level run data get entity @s data.custom_data.object_level

# Altar vault codes
execute as @e[tag=AltarNode] if data entity @s data.custom_data.vault_code store result score @s node.property.altar.vault_code run data get entity @s data.custom_data.vault_code
execute as @e[tag=EchoNode] if data entity @s data.custom_data.echo_difficulty store result score @s node.property.echo.difficulty run data get entity @s data.custom_data.echo_difficulty

# Max node state
execute as @e[tag=VarianceNode] if data entity @s data.custom_data.max_node_state store result score @s node.property.max_node_state run data get entity @s data.custom_data.max_node_state
