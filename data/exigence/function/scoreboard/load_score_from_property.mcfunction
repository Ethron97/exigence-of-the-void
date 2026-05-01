# Saves "property" scores to the entity data

#====================================================================================================

# Node id
execute as @e if data entity @s data.custom_data.node_id store result score @s node.id run data get entity @s data.custom_data.node_id
# Object level
execute as @e if data entity @s data.custom_data.object_level store result score @s node.property.object_level run data get entity @s data.custom_data.object_level

# Altar vault codes
execute as @e[tag=AltarNode] if data entity @s data.custom_data.vault_code store result score @s node.property.altar.vault_code run data get entity @s data.custom_data.vault_code
# Echo difficulties
execute as @e[tag=EchoNode] if data entity @s data.custom_data.echo_difficulty store result score @s node.property.echo.difficulty run data get entity @s data.custom_data.echo_difficulty
# Treasure bb/radius
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBX1 store result score @s node.property.treasure.BBX1 run data get entity @s data.custom_data.BBX1
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBX2 store result score @s node.property.treasure.BBX2 run data get entity @s data.custom_data.BBX2
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBY1 store result score @s node.property.treasure.BBY1 run data get entity @s data.custom_data.BBY1
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBY2 store result score @s node.property.treasure.BBY2 run data get entity @s data.custom_data.BBY2
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBZ1 store result score @s node.property.treasure.BBZ1 run data get entity @s data.custom_data.BBZ1
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.BBZ2 store result score @s node.property.treasure.BBZ2 run data get entity @s data.custom_data.BBZ2
execute as @e[tag=TreasureNode] if data entity @s data.custom_data.radius store result score @s node.property.treasure.radius run data get entity @s data.custom_data.radius

# Max node state
execute as @e[tag=VarianceNode] if data entity @s data.custom_data.max_node_state store result score @s node.property.max_node_state run data get entity @s data.custom_data.max_node_state

# Puzzle candle ids/order
execute as @e[tag=PuzzleCandle] if data entity @s data.custom_data.puzzle_candle_id store result score @s game.story.puzzle_candle_id run data get entity @s data.custom_data.puzzle_candle_id