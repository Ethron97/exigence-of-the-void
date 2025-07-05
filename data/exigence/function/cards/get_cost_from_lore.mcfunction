# Call with data card_name

## CONSTRAINTS
#   AS armorstand card

#==================================================================================================

# Debug
#say Getting cost from lore

# Get from storage (armor stand hand item)
execute store result score GreenCost Resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".green
execute store result score RedCost Resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".red
execute store result score AquaCost Resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".aqua

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get GreenCost Resources
execute store result storage exigence:resources red int 1 run scoreboard players get RedCost Resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get AquaCost Resources
