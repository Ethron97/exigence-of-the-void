# Called as new coin to handle functions

## CONSTRAINTS
#   AS coin item

#================================================================================================================


execute if score #Bonus Temp matches 1 run data modify entity @s Item.components."minecraft:custom_data".bonus_coin set value true

# Add to Treasure scoreboard team (for glow color)
team join Treasure @s

# Copy object level
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

# If treasure debug on, glow coin
execute if data storage exigence:debug {treasure:1} run data modify entity @s Glowing set value true

# Modify model based on level (if coin stack option enabled)
execute if score #stacksize Temp matches 2 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["coin2"]}
execute if score #stacksize Temp matches 3 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["coin3"]}
execute if score #stacksize Temp matches 4 run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["coin4"]}

# Modify "source" data
data modify entity @s Item.components."minecraft:custom_data".source set from storage exigence:treasure resolving

tag @s remove NewCoin
