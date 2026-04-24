# Called by /drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
#say (D3) Summon ardor ember

# Summon a new item
summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:ghast_tear",count:1\
,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{ardor_ember:"true"}}},Tags:["Ardor","NewArdorEmber","ArdorEmber","Ember"]}

# Assign model based on level
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_1"]}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_2"]}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_3"]}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_4"]}

# Add to Treasure scoreboard team (for glow color)
team join Ember @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1]

# Copy object level
scoreboard players operation @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] game.entity.object_level = @s node.property.object_level

# If debug on, glow
execute if data storage exigence:debug {ember:1} run data modify entity @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] Glowing set value true

# Remove "NewArdorEmber" tag
tag @e[type=minecraft:item,tag=NewArdorEmber,distance=..0.1,limit=1] remove NewArdorEmber
