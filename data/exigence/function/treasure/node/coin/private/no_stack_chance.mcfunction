# Called from drop_chance, randomize if this node should drop NON stack of coins

## CONSTRAINTS
#   AS treasure node

#==========================================================================================================

execute if score @s ObjectLevel matches 1 run execute as @s store result score @s Random run random value 1..25
execute if score @s ObjectLevel matches 2 run execute as @s store result score @s Random run random value 1..29
execute if score @s ObjectLevel matches 3 run execute as @s store result score @s Random run random value 1..22
execute if score @s ObjectLevel matches 4 run execute as @s store result score @s Random run random value 1..23
