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
# Treasure bb
execute as @e[scores={node.property.treasure.BBX1=1..},tag=TreasureNode] store result entity @s data.custom_data.BBX1 int 1 run scoreboard players get @s node.property.treasure.BBX1
execute as @e[scores={node.property.treasure.BBX2=1..},tag=TreasureNode] store result entity @s data.custom_data.BBX2 int 1 run scoreboard players get @s node.property.treasure.BBX2
execute as @e[scores={node.property.treasure.BBY1=1..},tag=TreasureNode] store result entity @s data.custom_data.BBY1 int 1 run scoreboard players get @s node.property.treasure.BBY1
execute as @e[scores={node.property.treasure.BBY2=1..},tag=TreasureNode] store result entity @s data.custom_data.BBY2 int 1 run scoreboard players get @s node.property.treasure.BBY2
execute as @e[scores={node.property.treasure.BBZ1=1..},tag=TreasureNode] store result entity @s data.custom_data.BBZ1 int 1 run scoreboard players get @s node.property.treasure.BBZ1
execute as @e[scores={node.property.treasure.BBZ2=1..},tag=TreasureNode] store result entity @s data.custom_data.BBZ2 int 1 run scoreboard players get @s node.property.treasure.BBZ2
execute as @e[scores={node.property.treasure.radius=1..},tag=TreasureNode] store result entity @s data.custom_data.radius int 1 run scoreboard players get @s node.property.treasure.radius

# Max node state
execute as @e[scores={node.property.max_node_state=1..},tag=VarianceNode] store result entity @s data.custom_data.max_node_state int 1 run scoreboard players get @s node.property.max_node_state

# Puzzle candle ids/order
execute as @e[scores={game.story.puzzle_candle_id=1..},tag=PuzzleCandle] store result entity @s data.custom_data.puzzle_candle_id int 1 run scoreboard players get @s game.story.puzzle_candle_id