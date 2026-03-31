# Called by modifiers/gathering_storm.mcfunction

## CONSTRAINTS
#   AT player
#       Gathering Storm artifact with speed 9

#====================================================================================================

# Store pickup delay
execute as @e[type=minecraft:item,distance=..101.5] store result score @s Random run data get entity @s PickupDelay 1

# Teleport any items that have a negative pickup delay to
execute as @e[type=minecraft:item,scores={Random=..0},distance=..101.5] run tp @s ~ ~1 ~
