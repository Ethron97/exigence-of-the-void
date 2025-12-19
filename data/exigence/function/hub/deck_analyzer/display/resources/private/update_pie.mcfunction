# Update pie

## CONSTRAINTS
#   AS item display

## INPUT
#   INT x
#   STR color

#=============================================================================================================

# Format value
$execute if score $(x) number matches 0..9 run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["pie_$(color)_00$(x)"]
$execute if score $(x) number matches 10..99 run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["pie_$(color)_0$(x)"]
$execute if score $(x) number matches 100 run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["pie_$(color)_$(x)"]