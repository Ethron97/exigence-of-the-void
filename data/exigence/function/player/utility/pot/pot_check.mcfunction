# Pot breaker check

## CONSTRAINTS
#   AS player

#=============================================================================================================

execute store result score #temp Temp run clear @s minecraft:wooden_sword 0
execute if score #temp Temp matches 0 at @s anchored eyes run function exigence:player/utility/pot/raycast_for_pot
