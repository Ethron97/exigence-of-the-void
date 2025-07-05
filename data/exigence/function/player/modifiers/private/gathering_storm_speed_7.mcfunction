# Called by modifiers/gathering_storm.mcfunction

## CONSTRAINTS
#   AT player
#       Gathering Storm artifact with speed 7

#=============================================================================================================

# Store pickup delay
execute as @e[distance=..65.5,type=minecraft:item] store result score @s Random run data get entity @s PickupDelay 1

# Teleport any items that have a negative pickup delay to
execute as @e[distance=..65.5,type=minecraft:item,scores={Random=..0}] run tp @s ~ ~1 ~
