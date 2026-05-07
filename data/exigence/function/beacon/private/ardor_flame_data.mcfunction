# Give ardor ember summoned item data

## CONSTRAINTS
#   AS ardor data (item)

## INPUT
#   #compare node.property.object_level

#====================================================================================================

# Add to Treasure scoreboard team (for glow color)
team join Ember @s

# Copy object level
scoreboard players operation @s game.entity.object_level = #compare node.property.object_level

# Assign model based on level
execute if score @s game.entity.object_level matches 1 run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["ardor_flame_1"]}
execute if score @s game.entity.object_level matches 2 run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["ardor_flame_2"]}
execute if score @s game.entity.object_level matches 3 run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["ardor_flame_3"]}
execute if score @s game.entity.object_level matches 4 run data modify entity @s Item.components."minecraft:custom_model_data" set value {strings:["ardor_flame_4"]}

# If debug on, glow
execute if score toggle.beacon debug matches 1 run data modify entity @s Glowing set value true

# Remove local tag
tag @s remove NewArdorFlame