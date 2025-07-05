## CONSTRAINTS
#   AT location

#==========================================================================================================

# DEBUG
#say Summon flame

# Summon a new item
summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{ardor_flame:"true"}}},Tags:["Ardor","NewArdorFlame","ArdorFlame","Ember"]}

# Assign model based on level
execute if score @s ObjectLevel matches 1 run data modify entity @e[type=item,tag=NewArdorFlame,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_1]}
execute if score @s ObjectLevel matches 2 run data modify entity @e[type=item,tag=NewArdorFlame,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_2]}
execute if score @s ObjectLevel matches 3 run data modify entity @e[type=item,tag=NewArdorFlame,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_3]}
execute if score @s ObjectLevel matches 4 run data modify entity @e[type=item,tag=NewArdorFlame,limit=1] Item.components."minecraft:custom_model_data" set value {"strings":[ardor_flame_4]}

# Add to Treasure scoreboard team (for glow color)
execute as @e[type=minecraft:item,tag=NewArdorFlame] run team join Ember @s

# Copy object level
scoreboard players operation @e[type=minecraft:item,tag=NewArdorFlame] ObjectLevel = @s ObjectLevel

# If debug on, glow
execute if data storage exigence:debug {ember:1} as @e[type=minecraft:item,tag=NewArdorFlame] run data modify entity @s Glowing set value true

# Remove "NewArdorFlame" tag
execute as @e[type=minecraft:item,tag=NewArdorFlame] run tag @s remove NewArdorFlame
