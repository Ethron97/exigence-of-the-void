# Assign new unique id to node

## CONSTRAINTS
#   AS node

#====================================================================================================

# Ensure we always make the next highest id
scoreboard players set #highest node.id 0
execute as @e[scores={node.id=1..}] run scoreboard players operation #highest node.id > @s node.id
scoreboard players add #highest node.id 1

# Copy score
scoreboard players operation @s node.id = #highest node.id
# Save to data
execute store result entity @s data.custom_data.node_id int 1 run scoreboard players get @s node.id
