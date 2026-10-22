# Check for consumable items to convert to placeholder

## CONSTRAINTS
#   AS/AT player (when leaving dungeon)

#====================================================================================================

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s ender_pearl 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_placeholder/enderpearl

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s snowball 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_placeholder/web_ball

scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @s wind_charge 0
execute if score #temp Temp matches 1.. run function exigence:player/utility/placeholder_consumables/to_placeholder/wind_charge

