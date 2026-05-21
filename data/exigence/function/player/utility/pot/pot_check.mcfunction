# Pot breaker check

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result score #temp Temp run clear @s wooden_sword 0

# Clear extra pot breakers
execute if score #temp Temp matches 2.. run clear @s wooden_sword 1

# If no wooden sword, check if looking at pot
execute if score #temp Temp matches 0 at @s anchored eyes run function exigence:player/utility/pot/raycast_for_pot
