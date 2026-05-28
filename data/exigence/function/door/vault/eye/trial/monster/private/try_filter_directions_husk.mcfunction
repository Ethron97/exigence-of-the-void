# Potentially remove directions from the list that do not have the player

## CONSTRAINTS
#   AS/AT monster

## INPUT
#   STORAGE exigence:trial valid_directions

## OUTPUT
#   STORAGE exigence:trial valid_directions (potentially modified)

#====================================================================================================

# New list
data modify storage exigence:trial filter_directions set value []

scoreboard players set #length_2 Temp 0
# Add to array if valid, and if player is found in that direction
execute if data storage exigence:trial {valid_directions:[0]} positioned ~7 ~ ~ unless entity @e[type=minecraft:husk,distance=..8] run function exigence:door/vault/eye/trial/monster/private/add_0_to_filter
execute if data storage exigence:trial {valid_directions:[1]} positioned ~ ~ ~7 unless entity @e[type=minecraft:husk,distance=..8] run function exigence:door/vault/eye/trial/monster/private/add_1_to_filter
execute if data storage exigence:trial {valid_directions:[2]} positioned ~-7 ~ ~ unless entity @e[type=minecraft:husk,distance=..8] run function exigence:door/vault/eye/trial/monster/private/add_2_to_filter
execute if data storage exigence:trial {valid_directions:[3]} positioned ~ ~ ~-7 unless entity @e[type=minecraft:husk,distance=..8] run function exigence:door/vault/eye/trial/monster/private/add_3_to_filter

# If the remaining array length is 1.., then we're ok to copy list
# If the remaining array is 0, keep origin a list
execute if score #length_2 Temp matches 1.. run data modify storage exigence:trial valid_directions set from storage exigence:trial filter_directions
execute if score #length_2 Temp matches 1.. run scoreboard players operation #length_1 Temp = #length_2 Temp
