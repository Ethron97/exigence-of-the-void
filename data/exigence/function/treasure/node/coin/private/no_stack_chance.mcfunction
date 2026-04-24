# Called from drop_chance, randomize if this node should drop NON stack of coins

## CONSTRAINTS
#   AS treasure node

#====================================================================================================

## SWITCH
execute if score @s node.property.object_level matches 1 run return run execute store result score @s Random run random value 1..25
execute if score @s node.property.object_level matches 2 run return run execute store result score @s Random run random value 1..29
execute if score @s node.property.object_level matches 3 run return run execute store result score @s Random run random value 1..22
execute if score @s node.property.object_level matches 4 run return run execute store result score @s Random run random value 1..23
