# Call with data card_name

## CONSTRAINTS
#   AS armorstand card

#==================================================================================================

# Debug
#say Getting cost from lore

# Get from storage (armor stand hand item)
execute store result score Green.Cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".green
execute store result score Red.Cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".red
execute store result score Aqua.Cost game.resources run data get entity @s equipment.mainhand.components."minecraft:custom_data".aqua

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get Green.Cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get Red.Cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get Aqua.Cost game.resources
