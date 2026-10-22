# Check for consumable item placeholders to convert to real thing

## CONSTRAINTS
#   AS/AT player (when entering dungeon)

#====================================================================================================

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"ender_pearl_placeholder"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_item/enderpearl

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_web_ball_placeholder"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_item/web_ball

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_wind_charge_placeholder"}] 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_item/wind_charge
