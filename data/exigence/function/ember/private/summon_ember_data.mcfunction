# Handle data of newly summoned ember
#   Called by ember/summon_ember

## CONSTRAINTS
#   AS NewEmber item entity

#==========================================================================================================

# Join ember team
team join Ember @s

# Assign object level
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

# If ember debug on, glow
execute if data storage exigence:debug {ember:1} run data modify entity @s Glowing set value true

# Modify model based on level (if ember stack option enabled)
execute if score #stacksize Temp matches 2 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["ember2"]}
execute if score #stacksize Temp matches 3 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["ember3"]}
execute if score #stacksize Temp matches 4 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["ember4"]}

# Remove "NewEmber" tag
tag @s remove NewEmber
