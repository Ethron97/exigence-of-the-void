## CONSTRAINTS
#   AS Item (NewEcho)

#==========================================================================================================

# Set name to be the same as the EchoNode that spawned it
data modify entity @s Item.components."minecraft:custom_name" set from entity @s CustomName

# Set ObjectLevel for pings
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

# Join team for color
team join Echo @s

# Prevent item from despawning
data merge entity @s {Age:-32768}

# Change model if there are multiple echos
execute if score EchosRequired DungeonRun matches 2.. run data merge entity @s {Item:{components:{"minecraft:custom_model_data":{"strings":["disc_fragment_5"]}}}}

# Remove local tag
tag @s remove NewEcho
