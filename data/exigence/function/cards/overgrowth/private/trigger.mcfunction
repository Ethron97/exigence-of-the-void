# called if successful consume from play function

## CONSTRAINTS
#   AS BerryNode Active,Grown

#==========================================================================================================

execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run function exigence:botany/node/berry_bush_overgrow {min:1,max:2}
