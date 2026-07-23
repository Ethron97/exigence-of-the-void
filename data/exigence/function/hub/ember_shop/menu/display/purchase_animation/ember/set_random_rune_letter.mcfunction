# Set random letter

## CONSTRAINTS
#   AS ember

#====================================================================================================

execute store result score random Random run random value 1..24

## SWITCH
execute if score random Random matches 1 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_1"]
execute if score random Random matches 2 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_2"]
execute if score random Random matches 3 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_3"]
execute if score random Random matches 4 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_4"]
execute if score random Random matches 5 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_5"]
execute if score random Random matches 6 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_6"]
execute if score random Random matches 7 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_7"]
execute if score random Random matches 8 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_8"]
execute if score random Random matches 9 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_9"]
execute if score random Random matches 10 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_10"]
execute if score random Random matches 11 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_11"]
execute if score random Random matches 12 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_12"]
execute if score random Random matches 13 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_13"]
execute if score random Random matches 14 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_14"]
execute if score random Random matches 15 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_15"]
execute if score random Random matches 16 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_16"]
execute if score random Random matches 17 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_17"]
execute if score random Random matches 18 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_18"]
execute if score random Random matches 19 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_19"]
execute if score random Random matches 20 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_20"]
execute if score random Random matches 21 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_21"]
execute if score random Random matches 22 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_22"]
execute if score random Random matches 23 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_23"]
execute if score random Random matches 24 run return run data modify entity @s item.components."minecraft:custom_model_data"."strings" set value ["letter_24"]
