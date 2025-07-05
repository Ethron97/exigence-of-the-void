# Called by new_pizza; Macro with rotation vectors to position first pizza marker

## CONSTRAINTS
#   AS center marker

## INPUT
#   INT RotA - Rotation from center
#   INT RotB - Reflected rotation back across chamber

#=====================================================================================================

# DEBUG
#$say Moving markers, $(RotA) $(RotB)

# Teleport center marker to face new rotation
$execute at @s run tp @s ~ ~ ~ ~$(RotA) ~

# Teleport A to first marker position
execute at @s positioned ^ ^ ^6.5 run tp @e[type=minecraft:marker,tag=PizzaA] ~ ~ ~

# Rotate A to be facing towards second marker position, +-the second random arc
$execute as @e[type=minecraft:marker,tag=PizzaA] at @s facing entity @e[type=marker,tag=BoltThrower,limit=1] eyes rotated ~$(RotB) ~ run tp @s ~ ~ ~ ~ ~
