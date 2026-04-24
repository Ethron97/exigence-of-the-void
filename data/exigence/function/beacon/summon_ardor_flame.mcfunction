# Called by /drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
#say (D3) Summon flame

# Summon a new item
summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:nether_star",count:1\
,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{ardor_flame:"true"}}},Tags:["Ardor","NewArdorFlame","ArdorFlame","Ember"]}

# Assign model based on level
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_1]}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_2]}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_3]}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_4]}

# Add to Treasure scoreboard team (for glow color)
team join Ember @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1]

# Copy object level
scoreboard players operation @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] game.entity.object_level = @s node.property.object_level

# If debug on, glow
execute if data storage exigence:debug {ember:1} run data modify entity @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] Glowing set value true

# Remove local tag
tag @e[type=minecraft:item,tag=NewArdorFlame,distance=..0.1,limit=1] remove NewArdorFlame
