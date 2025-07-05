# Increase item pickup radius

## CONSTRAINTS
#   AT player

#=============================================================================================================

# Store pickup delay
execute as @e[distance=..4,type=minecraft:item] store result score @s Random run data get entity @s PickupDelay 1

# Teleport any items that have a negative pickup delay to
execute as @e[distance=..4,type=minecraft:item,scores={Random=..0}] run tp @s ~ ~1 ~
