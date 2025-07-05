## CONSTRAINTS
#   AT location

#==========================================================================================================

# DEBUG
#say Summon ardor ember

# Summon a new item
summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:ghast_tear",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{ardor_ember:"true"}}},Tags:["Ardor","NewArdorEmber","ArdorEmber","Ember"]}

# Assign model based on level
execute if score @s ObjectLevel matches 1 run data modify entity @e[type=item,tag=NewArdorEmber,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_1"]}
execute if score @s ObjectLevel matches 2 run data modify entity @e[type=item,tag=NewArdorEmber,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_2"]}
execute if score @s ObjectLevel matches 3 run data modify entity @e[type=item,tag=NewArdorEmber,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_3"]}
execute if score @s ObjectLevel matches 4 run data modify entity @e[type=item,tag=NewArdorEmber,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":["ardor_ember_4"]}

# Add to Treasure scoreboard team (for glow color)
execute as @e[type=minecraft:item,tag=NewArdorEmber] run team join Ember @s

# Copy object level
scoreboard players operation @e[type=minecraft:item,tag=NewArdorEmber] ObjectLevel = @s ObjectLevel

# If debug on, glow
execute if data storage exigence:debug {ember:1} as @e[type=minecraft:item,tag=NewArdorEmber] run data modify entity @s Glowing set value true

# Remove "NewArdorEmber" tag
execute as @e[type=minecraft:item,tag=NewArdorEmber] run tag @s remove NewArdorEmber
