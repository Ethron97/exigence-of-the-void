# Saves "property" scores to the entity data

#====================================================================================================

# Node id
execute as @e[scores={node.id=1..}] store result entity @s data.custom_data.node_id int 1 run scoreboard players get @s node.id
# Object level
execute as @e[scores={node.property.object_level=1..},type=!player] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Altar vault codes
execute as @e[scores={node.property.altar.vault_code=1..},tag=AltarNode] store result entity @s data.custom_data.vault_code int 1 run scoreboard players get @s node.property.altar.vault_code
# Echo difficulties
execute as @e[scores={node.property.echo.difficulty=1..},tag=EchoNode] store result entity @s data.custom_data.echo_difficulty int 1 run scoreboard players get @s node.property.echo.difficulty

# Max node state
execute as @e[scores={node.property.max_node_state=1..},tag=VarianceNode] store result entity @s data.custom_data.max_node_state int 1 run scoreboard players get @s node.property.max_node_state
