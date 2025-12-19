# Call with data card_name

## CONSTRAINTS
#   AS armorstand card

#==================================================================================================

# Debug
#say Getting cost from lore

# Get from storage (armor stand hand item)
execute store result score green.cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".green
execute store result score red.cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".red
execute store result score aqua.cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".aqua

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get green.cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get red.cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get aqua.cost game.resources
