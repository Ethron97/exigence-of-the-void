# Check for void armor placeholders

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s netherite_nautilus_armor[custom_data~{item_name:"boots_sculk"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/armor/void_armor/convert_boots

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s netherite_nautilus_armor[custom_data~{item_name:"leggings_artifact"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/armor/void_armor/convert_leggings

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s netherite_nautilus_armor[custom_data~{item_name:"chest_resource"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/armor/void_armor/convert_chestplate

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s netherite_nautilus_armor[custom_data~{item_name:"wings"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/armor/void_armor/convert_wings

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s netherite_nautilus_armor[custom_data~{item_name:"helmet_deck"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/armor/void_armor/convert_helmet